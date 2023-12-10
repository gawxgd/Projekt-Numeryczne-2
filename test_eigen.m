% Czy dokładność zgadza się z zadaną tolerancją
disp("Testy obliczania najmniejszej wartości własnej")
maxIT = 100;
A = [6,5,-5;2,6,-2;2,5,-1]
disp("correct eigen value: 1")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
error = abs(1 - eigenValue)
A = [12,-51,4;6,167,-68;-4,24,-41]
disp("correct eigen value 16.0600")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
error = abs(16.0600 - eigenValue)
A = [12,-51,4;6,167,-68;-4,24,-41]

A = [2,0,0;0,2,0;0,0,1]
disp("correct eigen value 1")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
error = abs(1 - eigenValue)
disp("Test dla macierzy bez dominującej wartości własnej")
A = [1,0,0,0;0,1,0,0;0,0,2,0;0,0,0,2]
disp("correct eigen value 1")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
error = abs(1 - eigenValue)
A = [12,0,0,0;0,41,0,0;0,0,9,0;0,0,0,1021]
disp("correct eigen value 9")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
error = abs(9 - eigenValue)

A = [4,1;2,3]
disp("correct eigen value 2")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
error = abs(2 - eigenValue)

% Macierz jest bliska jednostkowej po rozkładzie ma cond = Inf
% chyba dobrze że się wypierdala nie da się odwrócić jej za bardzo
A = [4,0,0;0,1,1;0,1,1]
disp("correct eigen value 0")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
error = abs(0 - eigenValue)