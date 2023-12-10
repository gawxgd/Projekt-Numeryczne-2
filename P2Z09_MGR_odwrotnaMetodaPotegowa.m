function [eigenValue] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,epsilon,maxIT)
    % macierz musi mieć dominująca wartość własną
    % i n liniowo niezależnych wektorów własnych
    [Q,R] = QRdecomposition(A); % przetestować z moim QR
    % Generowanie losowego wektora startowego
    xPrev = rand(length(A),1);
    xn = xPrev;
    % Startowe wartości, żeby wykonała się pierwsza iteracja
    eigenValue = 0;
    it = 0;
    % Warunek stopu to różnica między poprzednią wartością a aktualną
    while it < maxIT
        % normowaniew wektora
        xPrev =  xPrev ./ norm(xPrev);
        % rozwiązanie układu równań
        y = Q \ xPrev;
        xPrev = xn;
        xn = R \ y;
        
        % obliczenie wartości własnej dla tej iteracji
        eigenValuePrev = eigenValue;
        eigenValue = xPrev' * xn;
        it = it + 1;
        if abs(eigenValue - eigenValuePrev) / abs(eigenValue) <= epsilon
            break
        end
        
    end
    
