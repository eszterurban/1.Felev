clear
syms x y z
axis equal; hold on;
fz (x,y) = sin(x) + (cos(y)/x);
fsurf(fz, [0.1 5 -6 6])
fx(x,y)=0*x+0*y;
fsurf(fx,[0.1 5 -6 6],'r')