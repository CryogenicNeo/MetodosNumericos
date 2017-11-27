function x = Jacobi (A, B, x)
    [~, n] = size(A);
    it = input('¿Cuantas iteraciones del metodo desea realizar? \n');

%     Dominante = zeros(n);
%     while (Dominante ~= ones(n))
%         for i = 1 : n
%             Dominante(i) = (2 * abs(A(i, i)) > sum(abs(A(i, :))));
%         end
%         if (Dominante ~= ones(n))
%             disp('\nLa matriz no es dominante, intente organizar los valores para crear la matriz dominante. ')
%         end
%     end

    temp = zeros(n, 1);
    for i = 1 : it
        for j = 1 : n
            S = 0;
            for k = 1 : n
                if (j ~= k)
                    S = S +(A(j, k) * x(k, 1));
                end
            end
            temp(j, 1) = (B(j, 1) - S) / A(j, j);
        end
        x = temp;
    end
    
    fprintf('\n Respuesta \n %10.5f', x)
end
