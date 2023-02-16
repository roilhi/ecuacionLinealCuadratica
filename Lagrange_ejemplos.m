clear
close all
clc;

xi = [1 3 5 7 13];

fxi = [800 2310 3090 3940 4755];
N = length(fxi);
%L = zeros(1,N);

%plot(t,v,'r-o'),grid
syms x;
for i=1:N
    Li = 1;
    for j=1:N
        if j~=i
            Li = Li*((x-xi(j))/(xi(i)-xi(j)));
        end
    end
    L(i) = Li;
end
fn = 0;
for i=1:N
    fn = L(i)*fxi(i) + fn;
    fn = simplify(expand(fn));
    f(i) = fn;
end
figure
plot(xi,fxi,'*','linewidth',5),grid on,
hold on
valor = 10; % valor a estimar 
estimaciones = zeros(1,N-1); 
for k = 2:N
    ezplot(f(k),[0 15])
    fprintf('Valor del polinomio orden %d\n',k-1);
    f(k)
    estimaciones(k-1) = double(subs(f(k),valor));
    fprintf('Valor estimado para xi=%d es %0.2f\n',valor,estimaciones(k-1));
end
legend('datos','f1','f2','f3','f4')


