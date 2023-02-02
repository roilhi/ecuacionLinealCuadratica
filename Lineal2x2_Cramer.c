#include<stdio.h>
#include<math.h>

int main()
{
  int a,b,c,d,e,f;
  float x,y,dg,dx,dy;
  printf("Dame el valor de a \n");
  scanf("%d",&a);
  printf("Dame el valor de b \n");
  scanf("%d",&b);
  printf("Dame el valor de c \n");
  scanf("%d",&c);
  printf("Dame el valor de d \n");
  scanf("%d",&d);
  printf("Dame el valor de e \n");
  scanf("%d",&e);
  printf("Dame el valor de f \n");
  scanf("%d",&f);
  dg = a*e-b*d;
  if(dg==0)
  {
    printf("Error, el sistema no tiene solución por Crammer");
  }
  else
  { 
    dx = c*e-b*f;
    dy = a*f-d*c;
    x = dx/dg;
    y = dy/dg;
    printf("Valor de x es %.2f",x);
    printf("Valor de y es %.2f",y);
  }

}