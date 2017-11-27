function x = Biseccion (str, limSup, limInf, tol)
    f = str2func(str);
    error = limSup - limInf;
    
    if nargin < 4
        tol = 1e-3;
    end
    
    while error >= tol
        error = limSup - limInf;
        x = limInf + (limSup - limInf) / 2;
        fx = f(x);
        if x == 0
            break;
        elseif limSup * fx < 0
            limInf = x;
        else
            limSup = x;
        end
    end
     
    fprintf('\n Respuesta \n %10.5f', x)
end