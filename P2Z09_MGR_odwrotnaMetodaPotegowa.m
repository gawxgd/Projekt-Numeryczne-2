function [eigenValue] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,epsilon,maxIT)
    if(det(A)==0)
        eigenValue = [];
        return;
    end
    % macierz musi mieć dominująca wartość własną
    % i n liniowo niezależnych wektorów własnych
    [Q,R] = QRdecomposition(A); % przetestować z moim QR
    % Generowanie losowego wektora startowego
    x = rand(length(A),1);
    % Startowe wartości, żeby wykonała się pierwsza iteracja
    it = 0;
    stopCondErr = Inf;
    % Warunek stopu to różnica między poprzednią wartością a aktualną
    while it < maxIT && stopCondErr > epsilon
        % normowaniew wektora
        x =  x ./ norm(x,2);
        % rozwiązanie układu równań
        z = x / norm(x,2);
        y = Q \ z;
        x = R \ y;
        % obliczenie wartości własnej dla tej iteracji
        eigenValue = z' * x;
        if it > 1
             stopCondErr = abs(eigenValue - eigenValuePrev)...
                 / abs(eigenValuePrev);
        end
        it = it + 1;
        eigenValuePrev = eigenValue;
    end
    eigenValue = 1 / eigenValue;
    
