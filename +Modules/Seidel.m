function x = Seidel (A, B, x, tol)
    [~, n] = size(A);
    error = zeros(1, n);
    
    if nargin < 4
        tol = 1e-3 * ones(1, n);
    end
    
    if size(tol) == size(ones(1, 1))
        tol = tol * ones(1, n);
    end
    %it = input('¿Cuantas iteraciones del metodo desea realizar? \n');

%     Dominante = zeros(n);
%     while (Dominante ~= ones(n))
%         for i = 1 : n
%             Dominante(i) = (2 * abs(A(i, i)) > sum(abs(A(i, :))));
%         end
%         if (Dominante ~= ones(n))
%             disp('\nLa matriz no es dominante, intente organizar los valores para crear la matriz dominante. ')
%         end
%     end

    cond = 1;
    while or(error > tol, cond)
        if cond == 1
            cond = 0;
        end
        temp = x;
        for j=1:n
            S = 0;
            for k=1:n
                if (j ~= k)
                S = S + (A(j, k) * x(k));
                end
            end
            x(j) = (B(j) - S) / A(j, j);
        end
        error = abs(temp - x);
    end
    
    fprintf('\n Respuesta \n %10.5f', x)
end


