function [Q,R] = QRdecomposition(A)
    % Projekt 2 zadanie 09
    % Marcin Gronicki, 327351
    % 
    % Funkcja wykonuje rozkład QR macierzy A przy użyciu odbić Householdera
    % Wejście:
    %   - A macierz kwadratowa której rozkład wykonujemy
    % Wyjście:
    %   - Q - macierz unitarna
    %   - R - macierz górnotrójkątna

    % Uzyskanie wymiarów macierzy A
    [m,n] = size(A);
    % Ustawienie ilości iteracji for w zależności od wymiarów A
    
    % Inicjalizacja macierzy
    Q = eye(m,m);
    tempMatrix = zeros(m);
    R = zeros(m,n);
    for j=1:min(m,n)
        % Obliczenie wektora
        y = A(j:end,j);
        w = y + sign(y(1)) * norm(y) * eye(size(y,1),1);
       % v = w / norm(w);
        v = w;
        ref = 2 * (v * v') ./ (v' * v); % dotąd git 
        tempMatrix(j:end,j:end) = ref;
        % Generowanie macierzy Householdera
        H = eye(m) - tempMatrix;
        % Obliczanie nowego A 
        A = H * A;
        % Obliczanie Q
        Q = Q * H;
        tempMatrix = zeros(m);
    end
    % Obliczenie R
    for i=1:m
        for j=i:n
            R(i,j) = A(i,j);
        end
    end
 
    
    
    
