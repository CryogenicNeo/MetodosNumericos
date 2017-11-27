f=input(' Ingrese la ecuacion diferencial','s');

x0=input(' Ingrese el primer punto x0:');

x1=input(' Ingrese el segundo punto x1:');

y0=input(' Ingrese la condicion inicial y(x0):');

n=input(' Ingrese el numero de pasos n:');

h=(x1-x0)/n;

xs=x0:h:x1;

fprintf('it       x0         y(x1)');

for i=1:n
it=i-1;

x0=xs(i);

x=x0;

y=y0;

k1=h*eval(f);

x=x0+h/2;

y=y0+k1/2;

k2=h*eval(f);

x=x0+h/2;

y=y0+k2/2;

k3=h*eval(f);

x=x0+h;

y=y0+k3;

k4=h*eval(f);

y0=y0+(k1+2*k2+2*k3+k4)/6;

fprintf('%2.0f%10.6f%10.6f',it,x0,y0);

end
fprintf(' El punto aproximado y(x1) es = %8.6f',y0);