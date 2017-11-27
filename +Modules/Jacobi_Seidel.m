clear;
clc;
disp('<-- INICIO DEL PROGRAMA --> \n')
disp('Programa disenado por Mijail Molina para encontrar la raiz de una funcion a traves del metodo de Gauss-Jordan. \n')
n = input('¿Cuantas ecuaciones tiene el sistema de ecuaciones a resolver? \n');
while (n <= 1)
  if (n <= 1)
    disp('\nEl numero ingresado no es valido. ')
    n = input('¿Cuantas ecuaciones tiene el sistema de ecuaciones a resolver? \n');
  end
end

it = input('¿Cuantas iteraciones del metodo desea realizar? \n');
while (it <= 0)
  if (it <= 0)
    disp('\nEl numero ingresado no es valido. ')
    it = input('¿Cuantas iteraciones del metodo desea realizar? \n');
  end
end

X = zeros(n, 1);
Dominante = zeros(n, 1);
B = zeros(n, 1);
while (Dominante ~= ones(n, 1))
  A = zeros(n, n);

  disp('\nIngrese a continuacion los valores de la matriz de coeficientes. ')
  for i=1:n
      for j=1:n
        A(i, j) = input(['Ingrese el numero de la posicion (', num2str(i) ,', ', num2str(j) ,').\n'])
      end
  end
  
  for i=1:n
    Dominante(i, 1) = (2*abs(A(i, i)) > sum(abs(A(i, :))))
  end

  if (Dominante ~= ones(n, 1))
    disp('\nLa matriz no es dominante, intente organizar los valores para crear la matriz dominante. ')
  end
end
  
disp('\nIngrese a continuacion la matriz de valores independienets. ')
for i=1:n
  B(i, 1) = input(['Ingrese el numero de la posicion (', num2str(i) ,', ', num2str(1) ,').\n'])
end

disp('\nIngrese a continuacion los valores iniciales de cada variable en orden. ')
for i=1:n
  X(i, 1) = input(['Ingrese el numero de la posicion (', num2str(i) ,', ', num2str(1) ,').\n'])
end

disp('\n')
disp('¿Por cual metodo le gustaria resolver la matriz? \n')
disp('1. Metodo de Jacobi.')
disp('2. Metodo de Gauss-Seidel.')
disp('0. Salir')
o = input('Elija una opcion:');
while (n > 3 && n < 0)
  if (n > 3 && n < 0)
    disp('\nEl numero ingresado no es valido. ')
    o = input('Elija una opcion:');
  end
end

if (o == 1)
  
  temp = zeros(n, 1);
  
  for y=1:it
    %disp(['<-- Paso ', num2str(y), ' -->'])
    
    for i=1:n
      Suma = 0;
      for j=1:n
        if (i ~= j)
          Suma = Suma +(A(i, j) * X(j, 1));
        end
      end
      temp(i, 1) = (B(i, 1) - Suma) / A(i, i);
    end
    
    X = temp;
  end
  
  disp('')
  disp('Respuesta:')
  disp(X)
  disp('')

elseif (o == 2)

  for y=1:it
    %disp(['<-- Paso ', num2str(y), ' -->'])
    
    for i=1:n
      Suma = 0;
      for j=1:n
        if (i ~= j)
          Suma = Suma + (A(i, j) * X(j, 1));
        end
      end
      X(i, 1) = (B(i, 1) - Suma) / A(i, i);
    end
  end
  
  disp('')
  disp(' Respuesta:')
  disp(X)
  disp('')
  
end
