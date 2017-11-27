function x = Simpson_38_Compuesto (str, limSup, limInf, Mid)
    f = str2func (str);
    h = (limInf - limSup) / 2;

    s1 = 0;
    s2 = 0;

    for i = 1 : 2 : (Mid - 1)
        s1 = s1 + f(2 * i);
    end

    for i = 1 : 2 : Mid
        s2 = s2 + f(2 * i - 1);
    end

    disp('<< Integral Aproximada >>')
    x = (h / 3) * (f(limSup) + 2 * s1 + 4 * s2 + f(limInf));
    fprintf('\n Respuesta \n %10.5f', x)
end