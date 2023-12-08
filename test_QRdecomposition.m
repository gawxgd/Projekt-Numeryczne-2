disp("QR decomposition Test")
disp("decomposition of A = ")
A = [63,41,-88;42,60,51;0,-28,56;126,82,-71];
disp(A)
[Q,R] = QRdecompositionbing(A);
Q
R
correctQ = 1/21 .* [-9,-6,0,-18;2,-15,14,4;10,-12,-14,-1;-16,-6,-7,10];
correctR = 21 .* [-7,-5,4;0,-2,-1;0,0,-5;0,0,0];
disp("correct Q = ")
disp(correctQ)
disp("correct R = ")
disp(correctR)
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

disp("decomposition of A = ")
A = [12,-51,4;6,167,-68;-4,24,-41];
disp(A)
[Q,R] = QRdecompositionbing(A);
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


