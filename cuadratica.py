import math
# resuelve la ecuación cuadrática ax^2+bx+c

a=int(input('Dame el valor de a '))
b= int(input('Dame el valor de b '))
c=int(input('Dame el valor de c '))

d = (b**2)-4*a*c

if d >=0:
    x1 = (-b+math.sqrt(d))/(2*a)
    x2 =(-b-math.sqrt(d))/(2*a)
    print(f'x1 = {x1}')
    print(f'x2 = {x2}')
else:
        print('error, soluciones complejas')