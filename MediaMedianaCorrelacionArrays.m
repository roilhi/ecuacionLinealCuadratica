clear
close all
clc

tam = 8; % tamanio arreglos
A = randi([0,9],1,tam); %primer arreglo unidimensional (enteros aleatorios de 0 a 9)
B = randi([0,9],1,tam); %segundo arreglo unidimensional (enteros aleatorios de 0 a 9)

medA = sum(A)/tam; %media arreglo A
medB = sum(B)/tam; % media arreglo B

% calculo de la mediana
if (rem(tam,2)==1) % si el num de elementos es impar
    idx = ceil(tam/2); % toma el valor de enmedio
    mediana_A = A(idx); % la mediana es directamente el valor de enmedio
    mediana_B = B(idx);
else
    idx1 = tam/2;
    idx2 = idx1+1;
    mediana_A = (A(idx1)+A(idx2))/2; % si el num de elementos es par promedia los dos de enmedio
    mediana_B = (B(idx1)+B(idx2))/2;
end

% cálculo de la desviación estándar
sqA = zeros(1,tam); %vectores que almacenan la diferencia al cuadrado
sqB = sqA;
xiyi = sqA;
for ii=1:tam
    sqA(ii) = (A(ii)- medA)^2; % (x-u)^2 almacena en el arreglo
    sqB(ii) = (B(ii) - medB)^2;
    xiyi = sqA(ii)*sqB(ii); % sum(xi-x)*(yi-y)
end

stdA = sqrt(sum(sqA)/(tam-1));
stdB = sqrt(sum(sqB)/(tam-1));

corrAB = sum(xiyi)/(sqrt(sum(sqA))*(sqrt(sum(sqB))));





