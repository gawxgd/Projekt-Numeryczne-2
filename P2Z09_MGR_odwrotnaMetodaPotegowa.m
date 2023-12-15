function [eigenValue,error,itCount] = P2Z09_MGR_odwrotnaMetodaPotegowa(A,epsilon,maxIT)
    % Projekt 2, zadanie 09
    % Marcin Gronicki, 327351
    %
    % Próba znalezienia najmniejszej (co do wartości bezwględnej) wartości
    % własnej odwracalnej kwadratowej macierzy rzeczywistej lub zespolonej,
    % w przypadku podania na wejście macierzy o zerowym wyznaczniku 
    % program zwraca w każdym argumencie wyjściowym []. Metoda przy 
    % rozwiązywaniu układów równań w każdej iteracji korzysta z obliczonego
    % wcześniej rozkładu QR otrzymanego przy użyciu odbić Householdera
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
        eigenValue = [];
        itCount = [];
        error = [];
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
        z = x / norm(x,2);
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
    
