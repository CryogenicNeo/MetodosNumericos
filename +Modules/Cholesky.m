function x = Cholesky (A, b)

    [n, m] = size(A);

    if n == m
        for i = 1 : n
            s1 = 0;
            for j = 1 : (i - 1)
                s1 = s1 + L(i, j) * u(j, i);
            end
            L(i, i) = sqrt(A(i, i) - s1);
            u(i, i) = L(i, i);
            for j = (i + 1) : n
                s2 = 0;
                for k = 1 : (i - 1)
                    s2 = s2 + L(j, k) * u(k, i);
                end
                L(j, i) = (A(j, i) - s2) / L(i, i);
            end
            for j = (i + 1) : n
                s3 = 0;
                for k = 1 : (i - 1)
                    s3 = s3 + L(i, k) * u(k, k);
                end
                u(i, j) = (A(i, j) - s3) / L(i, i);
            end
        end
        producto = det(L) * det(u);
        if producto ~= 0
            for i = 1 : n
                s = 0;
                for j = 1 : (i - 1)
                    s = s + L(i, j) * z(j);
                end
                z(i) = (b(i) - s) / L(i, i);
            end
            for i = n : -1 : 1
                s = 0;
                for j = (i + 1) : n
                    s = s + u(i, j) * x(j);
                end
                x(i) = (z(i) - s) / u(i, i);
            end
        else
            fprintf('\nEl determinante es igual a cero, por lo tanto' + ...
            ' el sistema tiene infinita o ninguna solucion\n')
        end
    end

    fprintf('\n Respuesta \n %10.5f', x)
end