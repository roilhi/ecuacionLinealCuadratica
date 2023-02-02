# Solución a un sistema de ecuaciones lineales por Cramer
# Ecuaciones:
# ax + by = c
# dx + ey = f
# Imprime a la salida las soluciones x, y
a=int(input('Dame el valor de a '))
b= int(input('Dame el valor de b '))
c=int(input('Dame el valor de c '))
d=int(input('Dame el valor de d '))
e= int(input('Dame el valor de e '))
f=int(input('Dame el valor de f '))
# Determinante general [a b;d e]
dg = a*e - b*d
if dg == 0:
    print('Error, el sistema no tiene solución por Crammer')
else:
    # determinante matriz x [c b; f e]
    dx = c*e - f*b
    #determinante matrix y [a c; d f]
    dy = a*f-d*c

    x = dx/dg
    y = dy/dg
    #probar con 2x+y=8, x-4y=-5; x=3 y=2
    print('Las soluciones son \n')
    print(f'x = {x}, y = {y}')