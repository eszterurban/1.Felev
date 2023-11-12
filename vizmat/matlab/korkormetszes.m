clear
px = [1 3]; py = [1 +1 ]; r = [2 2.5];
plot (px, py, 'k*');
hold on; axis equal;
syms x y;
F(x, y) = (x-px(1))^2 + (y-py(1))^2 - r(1)^2;
fimplicit(F, 'b');
G(x, y) = (x-px(2))^2 + (y-py(2))^2 - r(2)^2;
fimplicit(G, 'g');
e = [F==0; G==0];
m = solve(e, [x,y]);
for i=1:length(m.x)
    M = [m.x(i), m.y(i)];
    plot (M(1), M(2), 'r.', 'MarkerSize', 20);
end