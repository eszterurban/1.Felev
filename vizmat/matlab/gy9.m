clear
syms a0 a1 a2 a3 b0 b1 b2 b3 t
hold on; axis equal;
px = [-2 6 10]; py = [-2 -2 2]; v=[6,-4];
t0= 0; t1=1; t2=1.5;
plot(px, py, 'k*', 'MarkerSize',20);
quiver(px(1),py(1),v(1),v(2))
x(t)=a3 * t^3 + a2 * t^2 + a1 * t + a0;
xd=diff(x,t);
ex = [x(t0)  == px(1),...
    x(t1)  == px(2),...
    x(t2)  == px(3),...
    xd(t0)  == v(1)];
mx =solve(ex, [a0 a1 a2 a3]);
cx(t) = subs(x, [a0 a1 a2 a3],[mx.a0 mx.a1 mx.a2 mx.a3]); 

y(t)=b3 * t^3 + b2 * t^2 + b1 * t + b0;
yd=diff(y,t);
ey = [y(t0)  == py(1),...
    y(t1)  == py(2),...
    y(t2)  == py(3),...
    yd(t0)  == v(2)];
my =solve(ey, [b0 b1 b2 b3]);
cy(t) = subs(y, [b0 b1 b2 b3],[my.b0 my.b1 my.b2 my.b3]); 

fplot(cx, cy, [t0 t2], 'r', 'LineWidth', 1)