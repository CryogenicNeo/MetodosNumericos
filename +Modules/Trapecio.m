function x = Trapecio (str, limSup, limInf, inter)
    f = str2func(str);
    x=0;
    h=(limSup - limInf) / inter; 
    
    for i = limInf : h : limSup
        j = eval(f);
        if i == limInf
            m = j;
        end
        if i == limSup
            n = j;
        end
        x = x + j;
    end

    x = x - m - n;
    x = x * 2; 
    x = x + m + n; 
    x = x / (2 * inter); 
    x = x * (limSup - limInf);
    
    fprintf('\n Respuesta \n %10.5f', x)
end