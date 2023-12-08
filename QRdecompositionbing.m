function [Q,R] = QRdecompositionbing(A)
[m, n] = size(A);
Q = eye(m);
for j = 1:n
    v = A(j:m, j);
    v(1) = v(1) + sign(v(1)) * norm(v);
    v = v / norm(v);
    A(j:m, j:n) = A(j:m, j:n) - 2 * v * (v' * A(j:m, j:n));
    Q(j:m, :) = Q(j:m, :) - 2 * v * (v' * Q(j:m, :));
end
R = triu(A);