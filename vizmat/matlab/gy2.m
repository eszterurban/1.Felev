clear
syms x y
fz(x, y) = sqrt(1-x^2-(0.5*(y^2)));
fsurf(fz)
hold on; axis equal;
plot3(0.5, 0.2, fz(0.5, 0.2), 'r*', 'MarkerSize', 20)
