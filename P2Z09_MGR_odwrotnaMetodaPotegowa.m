function [eigenValue,error,itCount] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,epsilon,maxIT)
    % Projekt 2, zadanie 09
    % Marcin Gronicki, 327351
    %
    % Próba znalezienia najmniejszej (co do wartości bezwględnej) wartości
    % własnej kwadratowej macierzy rzeczywistej lub zespolonej.
    % Przy użyciu odwrotnej metody potęgowej z normowaniem. Metoda przy 
    % rozwiązywaniu układów równań w każdej iteracji korzysta z obliczonego
    % wcześniej rozkładu QR otrzymanego przy użyciu odbić Householdera. W
    % przypadku podania na wejście nie odwracalnej macierzy, program zwraca
    % na każdym wyjściu 0.
    % Wejście:
    %   - A - kwadratowa odwracalna macierz rzeczywista lub zespolona 
    %   - epsilon - tolerancja błędu
    %   - maxIT - maksymalna ilość iteracji
    % Wyjście:
    %   - eigenValue - szukana najmniejsza wartość własna co do modułu
    %   - error - błąd między wartościami własnymi wyznaczonymi w dwóch
    %   ostatnich iteracjach
    %   - itCount - liczba wykonanych iteracji
    
    % Sprawdzenie czy macierz ma niezerowy wyznacznik
    if(det(A) == 0)
        eigenValue = 0;
        itCount = 0;
        error = 0;
        return;
    end
    % Obliczenie rozkładu QR
    [Q,R] = QRdecomposition(A); 
    % Generowanie losowego wektora startowego
    x = rand(length(A),1);
    % Startowe wartości
    it = 0;
    stopCondErr = Inf;
    % Warunek stopu to różnica między poprzednią wartością a aktualną
    while it < maxIT && stopCondErr > epsilon
        % Normowaniew wektora
        x =  x ./ norm(x,2);
        % Rozwiązanie układu równań
        z = x; % z = x / norm(x,2);
        y = Q \ z;
        x = R \ y;
        % Obliczenie wartości własnej dla tej iteracji
        eigenValue = z' * x;
        % Aktualizacja warunku stopu
        if it > 1
             stopCondErr = abs(eigenValue - eigenValuePrev)...
                 / abs(eigenValuePrev);
        end
        it = it + 1;
        eigenValuePrev = eigenValue;
    end
    % Odwrócenie znalezionej wartości własnej
    eigenValue = 1 / eigenValue;
    itCount = it;
    error = stopCondErr;
    
