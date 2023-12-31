clear
maxIT = 1000;
A = [12,-51,4;6,167,-68;-4,24,-41]
disp("correct eigen value 16.0600")
disp("computed eigen value: ")
[eigenValue,errorFun,it,~,~] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
disp(eigenValue)
disp("computed error")
disp(errorFun)
disp("count of iterations")
disp(it)
error = abs(min(abs(eig(A))) - abs(eigenValue))