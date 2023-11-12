clear
syms x y
F(x, y) = (x-1)^2+(y-1)^2-1;
fimplicit(F);
hold on; axis equal;
fz(x, y)= 0*x+y-0.5
fimplicit(fz);
syms t0 t1
e = [F(x, y)==0, fz==0];
m = solve(e, [x, y]);
for i = 1:length(m.x)
   M = [m.x(i), m.y(i)];
   plot(M(1), M(2), 'b.', 'MarkerSize', 20);
end