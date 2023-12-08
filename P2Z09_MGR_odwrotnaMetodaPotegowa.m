function [eigenValue] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,epsilon)
    % macierz musi mieć dominująca wartość własną
    % i n liniowo niezależnych wektorów własnych
    realFlag = 0;
    if isreal(A)
        realFlag = 1;
    end
    [Q,R] = qr(A);
    xPrev = ones(length(A),1);
    xPrev = [3,7,-13];
    xn = xPrev;
    eigenValue = 10;
    eigenValuePrev = 0; 
    while abs(eigenValue - eigenValuePrev) / abs(eigenValue) > epsilon
        disp([eigenValue,eigenValuePrev])
        xPrev =  xPrev ./ norm(xPrev);
        y = (Q / xPrev)';
        xPrev = xn;
        xn = (R / y)';
        eigenValuePrev = eigenValue;
        if(realFlag == 1)
            eigenValue = xn * transpose(xPrev);
        else
            eigenValue = xn * conj(xPrev);
        end
    end
    eigenValue
