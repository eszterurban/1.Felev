clear 
syms x y
fz(x, y) = sin(x)-cos(y^2);
fsurf(fz);
hold on; axis equal;
x=-2.5; y=1.1;
plot3(-2.5, 1.1, fz(-2.5, 1.1), 'r*', 'MarkerSize', 20)
