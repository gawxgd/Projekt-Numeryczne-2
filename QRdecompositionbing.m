function [Q,R] = QRdecompositionbing(A)
    % tylko dla A rzeczywistych
    [m,n] = size(A);
    if(m<n)
        temp = m;
        m = n;
        n = temp;
    end
    Q = eye(m);
    tempMatrix = zeros(m);
    for j=1:n
        % Obliczenie normy
        y = A(j:end,j);
        normY = norm(y);
        % ustalenie znaku
        s = sign(y(1));
        % obliczenie wektora u
        w = y + s * normY * eye(size(y,1),1);
        v = w ./ norm(w);
        ref = 2*(v*v');
        tempMatrix(j:end,j:end) = ref;
        % Generating Househoulder Matrix
        H = eye(m) - tempMatrix;
        % Calculating new matrix A using H*A
        A = H*A;
        % Calculating orthogonal matrix, Q using Q=H1*H2*....*Hn
        Q = Q*H;
        tempMatrix = zeros(m);
        %A(j:m,j:n) = A(j:m,j:n) - 2 * v * (v' * A(j:m,j:n));
    end
    R = A;
    %Q = Q';
    
    
