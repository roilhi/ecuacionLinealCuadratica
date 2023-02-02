## Solución a ecuaciones cuadráticas

En este repositorio se encuentran los códigos en 
 * MATLAB
 * Python
 * C

De scripts que resuelven la ecuación cuadrática $ax^2+bx+c$ por medio de la fórmula general:

$$x_{1,2}=-b\pm\frac{\sqrt{b^2-4ac}}{2a}$$

De igual manera, se resuelve el sistema de ecuaciones 2x2 por el método de Crammer
$$\begin{align*} ax+by&=&c\\ dx+ey&=&f \end{align*}$$

En el cual se encuentran los determinantes $dg$, $dx$, $dy$, donde
$$dg = det(G) = ae-bd$$
$$dx = det(X) = ce-bf$$
$$dy = det(Y) = af-dc$$
a partir de las matrices:
$$\begin{equation}
G=
\begin{bmatrix}
a&b \\
d&e
\end{bmatrix}
\end{equation}$$

$$\begin{equation}
X=
\begin{bmatrix}
c&b \\
f&e
\end{bmatrix}
\end{equation}$$
$$\begin{equation}
Y=
\begin{bmatrix}
a&c \\
d&f
\end{bmatrix}
\end{equation}$$




