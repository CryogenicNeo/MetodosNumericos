function x = Jacobi (A, B, x, tol)
    [~, n] = size(A);
    temp = zeros(1, n);
    error = zeros(1, n);
    
    if nargin < 4
        tol = 1e-3 * ones(1, n);
    end
    
    if size(tol) == size(ones(1, 1))
        tol = tol * ones(1, n);
    end
    
    cond = 1;
    while or(error > tol, cond)
        if cond == 1
            cond = 0;
        end
        for j = 1 : n
            S = 0;
            for k = 1 : n
                if (j ~= k)
                    S = S +(A(j, k) * x(k));
                end
            end
            temp(j) = (B(j) - S) / A(j, j);
        end
        error = abs(temp - x);
        x = temp;
    end
    
    fprintf('\n Respuesta \n %10.5f', x)
end
