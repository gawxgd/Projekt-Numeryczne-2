disp("Testy obliczania najmniejszej wartości własnej")
maxIT = 1000;

disp("Macierze dla których metoda jest dokładna")
A = [6,5,-5;2,6,-2;2,5,-1]
disp("correct eigen value: 1")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter");

maxIT = 1000;
A = [12,-51,4;6,167,-68;-4,24,-41]
disp("correct eigen value 16.0600")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

A = [2,0,0;0,2,0;0,0,1]
disp("correct eigen value 1")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

A = [12,0,0,0;0,41,0,0;0,0,9,0;0,0,0,1021]
disp("correct eigen value 9")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

A = [4,1;2,3]
disp("correct eigen value 2")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

A = [2+i,1,0,0,1;1,3-i,1,0,0;0,1,4+3i,0,0;0,0,0,1+2i,1;1,0,0,1,5]
disp("correct eigen value 1.3935 + 0.6445i")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

A = [5+4i,-10i,14,2,18+5i,-2-2i;4,2-5i,6,8,-2+2i,4i;...
    -5i,1+2i,41-3i,-2,4i,-5i;-2,4,6i,-8+2i,4,5;1+1i,0,7i,1-5i,5i,0;...
    2i,6,17,8,0,0]
disp("correct eigen value -0.0447 - 0.1310i")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

disp("Macierz o det(A) = 0")

A = [4,0,0;0,1,1;0,1,1]
disp("correct eigen value 0")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

disp("Macierze dla których metoda nie jest zbieżna")

A = [0,-1;1,0]
disp("correct eigen value 0 - 1i")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

A = [-3 1 0; 1 0 3; 0 -3 -3]
disp("correct eigen value -1.5000 - 2.3979i")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

A = [-3 0 0; 0 0 1; 0 -1 0]
disp("correct eigen value 0.0000 - 1.0000i")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))

T = [4i,0,0;0,-4i,0;0,0,2+8i];
P = [12 + i,2,4;8i,0,3+2i;5i,2,7];
A = P * T * inv(P)
disp("correct eigen value 4i")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))
input("press enter")

T = [2-8i,0,0,0;0,-2-8i,0,0;0,0,2+8i,0;0,0,0,12];
P = [2 + 3i,21,42,1;1i,8i-2,0,0;5i+4,2i,4,0;1,2,3,7i];
A = P * T * inv(P);
disp("correct eigen value 2+8i")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("stop condition error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))