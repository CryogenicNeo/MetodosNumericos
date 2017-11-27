function x = Simpson_38_Simple (str, limSup, limInf)
    f = str2func(str);
    h= (limInf-limSup)/3;

    disp('<< Integral Aproximada >>');
    x =(3 * h / 8) * (f(limSup) + 3 * f((2 * limSup + limInf) / 3) + ...
        3 * f((2 + 2 * limInf) / 3));
    fprintf('\n Respuesta \n %10.5f', x);
end
