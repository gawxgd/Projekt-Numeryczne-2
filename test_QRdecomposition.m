% Testy czy otrzymanae Q i R są rozkładem QR 
% czy QR = A
% czy Q ma ortonormalne kolumny i Q' * Q = I
% czy R jest górno trójkątna i nie ma zer na diagonali
% złożoność 2mn^2 - (2/3)n^3
disp("QR decomposition Test")
disp("decomposition of A = ")
A = [63,41,-88;42,60,51;0,-28,56;126,82,-71];
disp(A)
[Q,R] = QRdecomposition(A);
Q
R
correctQ = 1/21 .* [-9,-6,0,-18;2,-15,14,4;10,-12,-14,-1;-16,-6,-7,10];
correctR = 21 .* [-7,-5,4;0,-2,-1;0,0,-5;0,0,0];
disp("correct Q = ")
disp(correctQ)
disp("correct R = ")
disp(correctR)
input("Press Enter");
disp("Q error = ")
Qerror = abs(Q - correctQ);
disp(Qerror)
disp("Q error mean")
disp(mean(Qerror,'all'))
disp("R error = ")
Rerror = abs(R - correctR);
disp(Rerror)
disp("R error mean")
disp(mean(Rerror,'all'))
input("Press Enter");
disp(Q*R)
disp(abs(Q*R - A))
disp(triu(R)-R)
disp(Q' * Q)
input("Press Enter");


disp("decomposition of A = ")
A = [12,-51,4;6,167,-68;-4,24,-41];
disp(A)
[Q,R] = QRdecomposition(A);
Q
R
%correctQ = [0.8571,-0.3943,0.3314;0.4286,0.9029,...
  %  -0.0343;-0.2857,0.1714,0.9429];
correctQ = [6/7,-69/175,58/175;3/7,158/175,-6/175;-2/7,6/35,33/35];
correctR = [14,21,-14;0,175,-70;0,0,-35];
disp("correct Q = ")
disp(correctQ)
disp("correct R = ")
disp(correctR)
input("Press Enter");

disp("Q error = ")
Qerror = abs(Q - correctQ);
disp(Qerror)
disp("Q error mean")
disp(mean(Qerror,'all'))
disp("R error = ")
Rerror = abs(R - correctR);
disp(Rerror)
disp("R error mean")
disp(mean(Rerror,'all'))
input("Press Enter");
disp(Q*R)
disp(abs(Q*R - A))
disp(triu(R)-R)
disp(Q' * Q)
input("Press Enter");
disp("Test 3")
A = [1,1,0;-1,0,1;0,1,1;0,0,1]
[Q,R] = QRdecomposition(A);
Q
R
correctQ = 1/sqrt(6) * [sqrt(3),1,0;-sqrt(3),1,0;0,2,0;0,0,sqrt(6)]
correctR = 1/sqrt(2) * [2,1,-1;0,sqrt(3),sqrt(3);0,0,sqrt(2)]
disp(Q * R)
disp(triu(R)-R)
disp(Q' * Q)
input("Press Enter");

disp("Test dla macierzy zespolonej")
A = [3i,2-2i;4+7i,-1+5i]
[Q,R] = QRdecomposition(A);
Q
R
disp("Czy QR = A")
disp(Q*R)
disp("Czy R jest górno trójkątna")
disp(triu(R)-R)
disp("Czy Q jest ortonormalna")
disp(Q'*Q)

disp("Test ")
A = [4,0,0;0,1,1;0,1,1]
[Q,R] = QRdecomposition(A);
Q
R
disp("Czy QR = A")
disp(Q*R)
disp("Czy R jest górno trójkątna")
disp(triu(R)-R)
disp("Czy Q jest ortonormalna")
disp(Q'*Q)
