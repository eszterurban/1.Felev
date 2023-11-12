clear 
px = [19 21 30 40 45 55];
py = [3 2 0 30 -10 0];
plot (px, py, '--r.', 'MarkerSize', 20)
hold on; axis equal;
syms t;
x(t) = 0*t; y(t) = 0*t;
n = 5;
for i =0:n
    b(t) = nchoosek(n, i)*t^i*(1-t)^(n-1);
    x(t) = x(t)+px(i+1)*b(t);
    y(t) = y(t)+py(i+1)*b(t);
end
fplot(x, y, [0 1]);

t0=0.3
P=[x(t0), y(t0)];
plot( P(1), P(2), 'r*', 'MarkerSize', 8)

xd(t)= diff(x,t)
yd(t)=diff(y, t)
v=[xd(t0), yd(t0)]
quiver(P(1),P(2), v(1),v(2), 'r', 'LineWidth', 2);
