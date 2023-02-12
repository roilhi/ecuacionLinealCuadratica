clear
close all
clc,

% coeficientes
A = [10 2 1;-3 -6 2;1 1 5];
% soluciones
b = [27 -61.5 -21.5];

n = 5; % número iteraciones
fprintf('***************************\n');
fprintf('Metodo de Gauss Seidel \n');
fprintf('Sistema de ecuaciones a resolver \n');
fprintf(' %0.2f x1 + %0.2f x2 + %0.2f x3 = %0.2f \n',A(1,1),A(1,2),A(1,3),b(1));
fprintf(' %0.2f x1 + %0.2f x2 + %0.2f x3 = %0.2f \n',A(2,1),A(2,2),A(2,3),b(2));
fprintf(' %0.2f x1 + %0.2f x2 + %0.2f x3 = %0.2f \n',A(3,1),A(3,2),A(3,3),b(3));
fprintf('***************************\n');

for j=1:n
    if j==1
        x1_i = b(1)/A(1,1);
        x2_i = ((-A(2,1)*x1_i)+b(2))/A(2,2);
        x3_i = ((-A(3,1)*x1_i)-(A(3,2)*x2_i)+b(3))/A(3,3);
        fprintf('Valor inicial x1 = %0.3f\n',x1_i);
        fprintf('Valor inicial x2 = %0.3f\n',x2_i);
        fprintf('Valor inicial x3 = %0.3f\n',x3_i);
    else
        x1_old = x1_i;
        x1_i = ((-A(1,2)*x2_i)-(A(1,3)*x3_i)+b(1))/A(1,1);
        ea1 =  abs((x1_i-x1_old)/x1_i)*100;
        x2_old = x2_i;
        x2_i = ((-A(2,1)*x1_i)-(A(2,3)*x3_i)+b(2))/A(2,2);
        ea2 = abs((x2_i-x2_old)/x2_i)*100;
        x3_old = x3_i;
        x3_i = ((-A(3,1)*x1_i)-(A(3,2)*x2_i)+b(3))/A(3,3);
        ea3 = abs((x3_i-x3_old)/x3_i)*100;
        fprintf('*****ITERACION %d ************\n',j);
        fprintf('Valor x1 = %0.3f -- Error 1 =%0.2f \n',x1_i,ea1);
        fprintf('Valor x2 = %0.3f -- Error 2 =%0.2f \n',x2_i,ea2);
        fprintf('Valor x3 = %0.3f -- Error 3 =%0.2f \n',x3_i,ea3);
    end

end

