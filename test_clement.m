n = 100;
% nie powinna bo nie ma najmniejszej
disp("Test macierz clementa o rozmiarze 100x100, metoda nie zbieżna")
A = gallery('clement',n);
disp('minimum eigen value of A')
eigen = min(eig(A))
[computed,errorC,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-10,1000);
disp("computed eigen value: ")
disp(computed)
error = abs(abs(computed) - abs(eigen))
disp("number of iterations")
disp(it)
disp("computed error")
disp(errorC)
input("press enter")

n = 100;
for i=2:10:n
    fprintf("wilkinson matrix %dx%d",i,i)
    A = wilkinson(i);
    [v,d] = eig(A);
    correct_eigen_value = min(abs(eig(A)))
    computed = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,10000)
    error = abs(abs(computed) - correct_eigen_value)
    input("press enter");
end

