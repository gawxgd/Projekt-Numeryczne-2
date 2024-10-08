function [Q,R] = QRdecompositionZLE(A)
    [m,n] = size(A);
    if(m<n)
        temp = m;
        m = n;
        n = temp;
    end
    Q = eye(m);
    R = A;
    for j=1:n
        % Obliczenie normy
        normx = norm(R(j:end,j));
        % ustalenie znaku
        s = -sign(R(j,j));
        % obliczenie wektora u
        u1 = R(j,j) - s * normx;
        w = R(j:end,j) / u1;
        w(1) = 1;
        tau = -s * u1 / normx;
        % -- R := HR, Q := QH
        R(j:end,:) = R(j:end,:) - (tau * w) * (w' * R(j:end,:));
        Q(:,j:end) = Q(:,j:end) - (Q(:,j:end) * w) * (tau * w');
    end
    %Q = Q';
    
    
