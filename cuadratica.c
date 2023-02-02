#include<stdio.h>
#include<math.h>

int main()
{
  int a,b,c,d;
  float x1,x2;
  printf("Dame el valor de a \n");
  scanf("%d",&a);
  printf("Dame el valor de b \n");
  scanf("%d",&b);
  printf("Dame el valor de c \n");
  scanf("%d",&c);
  d = pow(b,2)-4*a*c;
  if(d>=0)
  {
    x1 = (-b+sqrt(d))/(2*a);
    x2 = (-b-sqrt(d))/(2*a);
    printf("Valor de x1 es %.2f",x1);
    printf("Valor de x2 es %.2f",x2);
  }
  else
  {
    printf("Error, soluciones complejas");
  }

}
