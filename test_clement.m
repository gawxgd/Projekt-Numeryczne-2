n = 5;
% nie powinna bo nie ma najmniejszej
A = gallery('clement',i)
disp('minimum eigen value of A')
eigen = min(eig(A))
computed = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-10,1000);
disp(computed)

n = 5;
for i=2:n
    fprintf("wilkinson matrix %dx%d",i)
    A = wilkinson(i);
    [v,d] = eig(A)
    eigen = min(abs(eig(A)));
    disp(["correct eig = ",eigen])
    computed = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,10000)
    error = abs(abs(computed) - eigen)
    input("press enter");
end

