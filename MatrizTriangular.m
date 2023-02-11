clear
close all;
clc;
% Programa que calcula una matriz triangular con elementos 0-N-1
N = 6;
f = N-1;
%M1 = {};
%M2 = {};
M = zeros(N);
for i=1:N-1
    vi = ones(1,f)*i;
    f = f-1;
    vi_n = -1*vi;
    M1 = diag(vi,i); 
    M2 = diag(vi_n,-i);
    M = M+M1+M2;
end

M