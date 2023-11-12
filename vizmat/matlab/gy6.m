clear
syms x y 
hold on; axis equal;
f (x, y) = -4*x+4;
fimplicit(f, 'g')
fp(x,y) = (x^2)-(2*x*y)+(y^2)+(4*x)-(8*y)+20;
fimplicit(fp, 'b')
e= [f==0, fp==0];
m=solve(e,[x,y]);
P=[m.x, m.y];
plot(P(1), P(2), 'r*', 'MarkerSize', 20)