function [Q,R] = QRdecompositionv2(A)
    % Projekt 2 zadanie 09
    % Marcin Gronicki, 327351
    % 
    % Funkcja wykonuje rozkład QR macierzy A przy użyciu odbić Householdera
    % Wejście:
    %   - A macierz kwadratowa której rozkład wykonujemy
    % Wyjście:
    %   - Q - macierz unitarna
    %   - R - macierz górnotrójkątna

    [n, m] = size(A);
    % Warunki startowe
    if (m < n)
      ITer = m;
    else
      ITer = n-1;
    end
    R = A;
    Q = eye(n);
    for j=1:ITer
      % Obliczenie wektora aktualnej kolumny odbitego householderem
      x = R(:,j);
      v = zeros(length(x),1);
      v(j:n) = x(j:n);
      % Przypadek kiedy pierwszy element wektora jest zerowy
      if x(j) == 0
        s = 1;
      else
        s = sign(x(j));
      end
      v(j) = v(j) + s * norm(x(j:n));
      if ((v' * v) > 0)
        v = v * sqrt(2 / (v' * v));
      end
      % Obliczenie R przy użyciu v odpowiada R = H * R
      R = R - v * (v' * R);
      % Sztywne ustawienie zera, żeby wyeliminować błędy zaokrągleń
      for i=j+1:n
        R(i,j) = 0;
      end
      % Obliczanie Q przy użyciu v odpowiada Q = Q * H'.
      Q = Q - (Q * v) * v';
    end
