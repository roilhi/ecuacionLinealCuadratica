% Solución a un sistema de ecuaciones lineales por Cramer
% Ecuaciones:
% ax + by = c
% dx + ey = f
% Imprime a la salida las soluciones x, y
promptA = 'Dame el valor de a ';
a = input(promptA);
promptB = 'Dame el valor de b ';
b = input(promptB);
promptC = 'Dame el valor de c ';
c = input(promptC);
promptD = 'Dame el valor de d ';
d = input(promptD);
promptE = 'Dame el valor de e ';
e = input(promptE);
promptF = 'Dame el valor de f ';
f = input(promptF);

if dg ==0
    disp('Error, el sistema no tiene solución por Crammer');
else
    % Determinante general [a b;d e]
    dg = a*e - b*d;
    % determinante matriz x
    dx = c*e - f*b;
    % determinante matrix y
    dy = a*f-d*c;

    x = dx/dg
    y = dy/dg
end

% probar con 2x+y=8, x-4y=-5; x=3 y=2