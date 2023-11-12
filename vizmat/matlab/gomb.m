clear
syms x y z
F(x, y, z)=x^2+y^2+z^2-1;
fimplicit3(F, [0 1 -1 1 -1 0])
axis equal
F(0,0,1)