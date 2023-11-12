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

%csatlakozás
m = 5;
rx = [px(5) px(5)+v2(1)/m 15 18 20 23];
ry = [py(5) py(5)+v2(2)/m 2 -2 1 -2];
plot (rx, ry, '--o');
x(t) = 0*t; y(t) = 0*t;
m = 5;
for i=0:m 
    b(t) = nchoosek(m, i)*t^i*(1-t)^(m-i);
    x(t) = x(t)+rx(i+1)*b(t);
    y(t) = y(t)+ry(i+1)*b(t);
end
fplot(x, y, [0,1])