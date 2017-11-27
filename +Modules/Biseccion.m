function x = Biseccion (str, limSup, limInf)
    f = str2func(str);
    tol = 1e-3;
    error = limSup - limInf;
    
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
end