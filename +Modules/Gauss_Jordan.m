function x = Gauss_Jordan (a)
    [m,n]=size(a);
    
    for i = 1 : (m - 1)
        for j = 2 : m
            if a(i, i) == 0
                t = a(1, :);
                a(1, :) = a(j, :);
                a(j, :) = t;
            end
        end
        
        for j = (i + 1) : m
            a(j, :) = a(j, :) - a(i, :) * (a(j, i) / a(i, i));
        end
    end

    for i = m : -1 : 2
        for j = (i - 1) : -1 : 1
            a(j, :) = a(j, :) - a(i, :) * (a(j, i) / a(i, i));
        end
    end

    for i = 1 : m
        a(i, :) = a(i, :) / a(i, i);
        x(i) = a(i, n);
    end

    fprintf('\n Respuesta \n %10.5f', x)
end