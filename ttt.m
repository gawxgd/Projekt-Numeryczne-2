A = [5+4i,-10i,14,2,18+5i,-2-2i;4,2-5i,6,8,-2+2i,4i;...
    -5i,1+2i,41-3i,-2,4i,-5i;-2,4,6i,-8+2i,4,5;1+1i,0,7i,1-5i,5i,0;...
    2i,6,17,8,0,0]
disp("correct eigen value -0.0447 - 0.1310i")
disp("computed eigen value: ")
[eigenValue,errorFun,it,vtab,tab] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,1e-14,maxIT);
tab
[v,d] = eig(A);
v
