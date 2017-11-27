function x = Punto_Fijo (str, punto, tol)
    f = str2func(str);
    
    if nargin < 3
        tol = 1e-3;
    end
    
    y = punto;
    x = f(y);
    error = abs(y - x);
    
    while error > tol
        error = abs(y - x);
        y = x;
        x = f(y);
    end
    
    fprintf('\n Respuesta \n %10.5f', x)
end