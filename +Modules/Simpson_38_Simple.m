clear all


f= input('f(x)=', 's' );


g= inline(f);

a= input('Ingrese el limite superior');
b= input('Ingrese el limite inferior');
h= (b-a)/3;

disp('VALOR APROXIMADO DE LA INTEGRAL');

I=(3*h/8)*(g(a) + 3*g((2*a+b)/3)+3*g((2+2*b)/3));

fprintf('\n Respuesta \n %10.5f',I);
