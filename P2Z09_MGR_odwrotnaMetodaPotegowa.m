function [eigenValue] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,epsilon)
    % macierz musi mieć dominująca wartość własną
    % i n liniowo niezależnych wektorów własnych
    realFlag = 0;
    % Sprawdzenie czy macierz jest rzeczywista
    if isreal(A)
        realFlag = 1;
    end
    [Q,R] = QRdecomposition(A); % przetestować z moim QR
    % Generowanie losowego wektora startowego
    xPrev = rand(length(A),1);
    xn = xPrev;
    % Startowe wartości, żeby wykonała się pierwsza iteracja
    eigenValue = 10;
    eigenValuePrev = 0; 
    % Warunek stopu to różnica między poprzednią wartością a aktualną
    while abs(eigenValue - eigenValuePrev) / abs(eigenValue) > epsilon
        % normowaniew wektora
        xPrev =  xPrev ./ norm(xPrev);
        % rozwiązanie układu równań
        y = Q \ xPrev;
        xPrev = xn;
        xn = R \ y;
        eigenValuePrev = eigenValue;
        % obliczenie wartości własnej dla tej iteracji
        if(realFlag == 1)
            eigenValue = transpose(xPrev) * xn;
        else
            eigenValue = conj(xPrev) * xn;
        end
    end
    
