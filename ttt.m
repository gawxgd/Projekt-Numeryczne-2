clear
maxIT = 1000;
T = [2-8i,0,0,0;0,-2-8i,0,0;0,0,2+8i,0;0,0,0,12];
P = [2 + 3i,21,42,1;1i,8i-2,0,0;5i+4,2i,4,0;1,2,3,7i];
A = P * T * inv(P);
eig(A)
disp("correct eigen value 2+8i")
disp("computed eigen value: ")
[eigenValue,errorFun,it,vtab,tab] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("error")
disp(abs(abs(eigenValue) - abs(4i)))
disp("count of iteration")
disp(it)

