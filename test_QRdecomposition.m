% Testy czy otrzymanae Q i R są rozkładem QR 
% czy QR = A
% czy Q ma ortonormalne kolumny i Q' * Q = I
% czy R jest górno trójkątna i nie ma zer na diagonali
% złożoność 2mn^2 - (2/3)n^3
disp("QR decomposition Test")
disp("decomposition of A = ")
A = [63,41,-88;42,60,51;0,-28,56;126,82,-71];
disp(A)
[Q,R] = QRdecompositionv2(A);
Q
R
input("Press Enter");
disp("QR = ")
disp(Q*R)
disp("QR - A error")
disp(abs(Q*R - A))
disp("upper triangle R - R")
disp(triu(R)-R)
disp("czy Q unitarna, Q'Q powinna być jednostkowa ")
disp(Q' * Q)
input("Press Enter");

disp("decomposition of A = ")
A = [12,-51,4;6,167,-68;-4,24,-41];
disp(A)
[Q,R] = QRdecompositionv2(A);
Q
R
input("Press Enter");
disp("QR = ")
disp(Q*R)
disp("QR - A error")
disp(abs(Q*R - A))
disp("upper triangle R - R")
disp(triu(R)-R)
disp("czy Q unitarna, Q'Q powinna być jednostkowa ")
disp(Q' * Q)
input("Press Enter");
disp("Test 3")
A = [1,1,0;-1,0,1;0,1,1;0,0,1]
[Q,R] = QRdecompositionv2(A);
Q
R
input("Press Enter");
disp("QR = ")
disp(Q*R)
disp("QR - A error")
disp(abs(Q*R - A))
disp("upper triangle R - R")
disp(triu(R)-R)
disp("czy Q unitarna, Q'Q powinna być jednostkowa ")
disp(Q' * Q)
input("Press Enter");

disp("Test dla macierzy zespolonej")
A = [3i,2-2i;4+7i,-1+5i]
[Q,R] = QRdecompositionv2(A);
Q
R
input("Press Enter");
disp("QR = ")
disp(Q*R)
disp("QR - A error")
disp(abs(Q*R - A))
disp("upper triangle R - R")
disp(triu(R)-R)
disp("czy Q unitarna, Q'Q powinna być jednostkowa ")
disp(Q' * Q)
input("Press Enter");

disp("Test ")
A = [4,0,0;0,1,1;0,1,1]
[Q,R] = QRdecompositionv2(A);
Q
R
input("Press Enter");
disp("QR = ")
disp(Q*R)
disp("QR - A error")
disp(abs(Q*R - A))
disp("upper triangle R - R")
disp(triu(R)-R)
disp("czy Q unitarna, Q'Q powinna być jednostkowa ")
disp(Q' * Q)
input("Press Enter");

A = [-3 0 0; 0 0 1; 0 -1 0]
[Q,R] = QRdecompositionv2(A);
Q
R
input("Press Enter");
disp("QR = ")
disp(Q*R)
disp("QR - A error")
disp(abs(Q*R - A))
disp("upper triangle R - R")
disp(triu(R)-R)
disp("czy Q unitarna, Q'Q powinna być jednostkowa ")
disp(Q' * Q)
input("Press Enter");

A = [0,-1;1,0]
[Q,R] = QRdecompositionv2(A);
Q
R
input("Press Enter");
disp("QR = ")
disp(Q*R)
disp("QR - A error")
disp(abs(Q*R - A))
disp("upper triangle R - R")
disp(triu(R)-R)
disp("czy Q unitarna, Q'Q powinna być jednostkowa ")
disp(Q' * Q)
input("Press Enter");