function [Q,R] = QRdecomposition(A)
    [m,n] = size(A);
    iTer = n;
    if(m<=n)
        iTer = m - 1;
    end
    Q = eye(m,m);
    tempMatrix = zeros(m);
    R = zeros(m,n);
    for j=1:iTer
        % Obliczenie normy
        y = A(j:end,j);
        % ustalenie znaku
        s = sign(A(j,j));
        % obliczenie wektora u
        % w = y + s * norm(y) * eye(size(y,1),1);
        w = y + sign(A(j,j)) * norm(y) * eye(size(y,1),1);
        v = w / norm(w);
        ref = 2 * (v * v');
        tempMatrix(j:end,j:end) = ref;
        % Generating Househoulder Matrix
        H = eye(m) - tempMatrix;
        % Calculating new matrix A using H*A
        A = H * A;
        % Calculating orthogonal matrix, Q using Q=H1*H2*....*Hn
        Q = Q * H;
        tempMatrix = zeros(m);
    end
    
    for i = 1:m
        for j = i:n
            R(i,j) = A(i,j);
        end
    end
    
    
    
