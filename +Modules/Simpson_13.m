function x = Simpson_13 (str, limSup, limInf, inter)
    f = str2func(str);

    if nargin < 4
        inter = 2;
    end

    if mod(inter, 2) == 0
        inter = inter + 1;
    end

    h = (limSup - limInf) / inter;

    s1 = 0;
    s2 = 0;

    for i = 1 : 2 : (inter - 1)
        s1 = s1 + feval(f, h * i + limInf);
    end
    for i = 2 : 2 : (inter - 2)
        s2 = s2 + feval(f, h * i + limInf);
    end

    disp('<< Integral Aproximada >>')
    x = (h / 3) * (feval(f, limInf) + 4 * s1 + 2 * s2 + feval(f, limSup));
    fprintf('\n Respuesta \n %10.5f', x)
end