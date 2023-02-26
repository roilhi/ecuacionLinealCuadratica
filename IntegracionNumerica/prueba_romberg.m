clear
close all
clc,
%Aplicaci�n del c�lculo de la Integral de Romberg a una curva gaussiana
% con centro en mu y desviaci�n est�ndar (anchura) sigma
mu = 0;
sigma = 1;
f = @(x) exp((-(x-mu).^2)/(2*(sigma).^2));
a = 0; %limite inferior de la integral
b = 2*sigma; % limite superior de la integral
n = 3; % n�mero de segmentos igualmente espaciados
n_iteraciones = 4; % n�mero de iteraciones del algortimo

format long
I = romberg(f,a,b,n,n_iteraciones)

val_est = I(n_iteraciones,1);

x_vec = a:0.01:b;
figure
fplot(f,[-4*sigma,4*sigma],'r')
hold on
area(x_vec,f(x_vec))
title('Funci�n gaussiana')
xlabel('x')
ylabel('e^{-(x-\mu)^2/2\sigma^2}')
text(1.1,0.6,sprintf('Area estimada = %f',val_est))






