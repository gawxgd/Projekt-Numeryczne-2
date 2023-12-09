disp("Testy obliczania najmniejszej wartości własnej")
A = [6,5,-5;2,6,-2;2,5,-1]
disp("correct eigen value: 1")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-6);
disp(eigenValue)
error = abs(1 - eigenValue)
A = [12,-51,4;6,167,-68;-4,24,-41]
disp("correct eigen value 16.0600")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-6);
disp(eigenValue)
error = abs(16.0600 - eigenValue)
A = [12,-51,4;6,167,-68;-4,24,-41]

A = [2,0,0;0,2,0;0,0,1]
disp("correct eigen value 16.0600")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-6);
disp(eigenValue)
error = abs(1 - eigenValue)
disp("Test dla macierzy bez dominującej wartości własnej")
A = [1,0,0,0;0,1,0,0;0,0,2,0;0,0,0,2]
disp("correct eigen value 1")
disp("computed eigen value: ")
eigenValue = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-6);
disp(eigenValue)
error = abs(1 - eigenValue)