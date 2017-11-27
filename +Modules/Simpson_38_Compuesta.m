clear all


f= input('f(x)=', 's' );


g= inline(f);

a= input('Ingrese el limite superior');
b= input('Ingrese el limite inferior');
n= input('Ingrese la mitad de intervalos');

h= (b-a)/2;

s1=0;
s2=0;

for j=1:2:n-1;
    
    s1=s1+g(2*j);
    
end

for k=1:2:n;
    
    s2=s2+g(2*k-1);
    
end

disp('VALOR APROXIMADO DE LA INTEGRAL');


I=(h/3)*(g(a) +2*s1 + 4*s2 +g(b));

fprintf('\n Respuesta \n %10.5f',I)