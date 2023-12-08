disp("Testy obliczania najmniejszej wartości własnej")
A = [6,5,-5;2,6,-2;2,5,-1];
disp("correct eigen value: 1")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-6);
disp(eigenValue)
error = abs(1 - eigenValue)