function x = Newton_Raphson (str, strdx, punto, tol)
    f = str2func(str);
    fprima = str2func(strdx);
    
    if nargin < 4
        tol = 1e-3;
    end

    y = punto;
    yimagen = f(y);
    yderivada = fprima(y);
    x = y - (yimagen/yderivada);
    error = (abs(y - x));

    while error > tol
        error = (abs(y - x));
        y = x;
        yimagen = f(y);
        yderivada = fprima(y);
        x = y - (yimagen/yderivada);
    end
    
    fprintf('\n Respuesta \n %10.5f', x)
end