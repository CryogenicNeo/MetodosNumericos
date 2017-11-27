function x = Crout (A, b)
    b = b';
    
    [n, m] = size(A);
    if n == m
        for i = 1 : n
            u(i, i) = 1;
            s = 0;
            for j = 1 : (i - 1)
                s = s + L(i, j) * u(j, i);
            end
            L(i, i) = (A(i, i) - s);
            
            for j = (i + 1) : n
                s = 0;
                for k = 1 : (i - 1)
                    s = s + L(j, k) * u(k, i);
                end
                L(j, i) = (A(j, i) - s);
            end
            for j = (i + 1) : n
                s = 0;
                for k = 1 : (i - 1)
                    s = s + L(i, k) * u(k, j);
                end
                u(i, j) = (A(i, j) - s) / L(i, i);
            end
        end
        mu = 1; %calculo del determinante de u
        mL = 1; %calculo del determinante inicial de L
        for i = 1 : n
            mL = mL * L(i, i);
        end
        
        producto = mL * mu; %calculo del determinante total
        if producto ~= 0
            for i = 1 : n
                s = 0;
                for j = 1 : (i - 1)
                    s = s + L(i, j) * z(j);
                end
                z(i) = (b(i) - s) / L(i, i); %obtencion del vector Z
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
                ' el sistema tiene infinita o ninguna solucion:\n')
        end
    end
 
    fprintf('\n Respuesta \n %10.5f', x)
end





