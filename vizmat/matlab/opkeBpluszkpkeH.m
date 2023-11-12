clear
px = [1, 2, 4 5 8];
py = [1, 4, 5, 0 2];
plot (px, py, '--o');
axis equal; hold on;
syms t;
x(t) = 0*t; y(t) = 0*t;
n = 4;
for i=0:n 
    b(t) = nchoosek(n, i)*t^i*(1-t)^(n-i);
    x(t) = x(t)+px(i+1)*b(t);
    y(t) = y(t)+py(i+1)*b(t);
end
fplot(x, y, [0,1])
v1 = [n*(px(2)-px(1)), n*(py(2)-py(1))];
quiver(px(1), py(1), v1(1), v1(2));
v2 = [n*(px(5)-px(4)), n*(py(5)-py(4))];
quiver(px(5), py(5), v2(1), v2(2));

%2p2éH
rx=[px(5), 12];
ry=[py(5), 0];
ux=[v2(1), 0];
uy=[v2(2), -3];
plot(rx, ry, '*');
quiver(rx(1), ry(1), ux(1), uy(1));
quiver(rx(2), ry(2), ux(2), uy(2));
t1 = 1; t2 = 2;
syms a3 a2 a1 a0
x(t) = a3*t^3 + a2*t^2 + a1*t +a0;
xd(t) = diff(x, t);
ex = [x(t1) == rx(1),...
    x(t2) == rx(2),...
    xd(t1) == ux(1),...
    xd(t2) == ux(2)]
mx = solve(ex, [a3 a2 a1 a0])
cx(t) = subs(x, [a3 a2 a1 a0], [mx.a3 mx.a2 mx.a1 mx.a0])
syms b3 b2 b1 b0 
y(t) = b3*t^3 + b2*t^2 + b1*t +b0;
yd(t) = diff(y, t);
ey = [y(t1) == ry(1),...
    y(t2) == ry(2),...
    yd(t1) == uy(1),...
    yd(t2) == uy(2)]
my = solve(ey, [b3 b2 b1 b0])
cy(t) = subs(y, [b3 b2 b1 b0], [my.b3 my.b2 my.b1 my.b0])
fplot(cx, cy, [t1 t2], 'r')