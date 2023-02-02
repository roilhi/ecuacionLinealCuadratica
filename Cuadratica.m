% resuelve la ecuación cuadrática ax^2+bx+c
promptA = 'Dame el valor de a ';
a = input(promptA);
promptB = 'Dame el valor de b ';
b = input(promptB);
promptC = 'Dame el valor de c ';
c = input(promptC);

d = b^2-4*a*c;

if d>=0
    x1 = (-b+sqrt(d))/(2*a)
    x2 = (-b-sqrt(d))/(2*a)
else
    disp('Error, soluciones complejas');
end