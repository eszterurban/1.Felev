clear
px = [0 1 2 4]; py = [0 3 4 3.5];
t1 = 0; t2 = 2; t3 = 3; t4 = 5;
plot (px, py, 'b*')
axis equal; hold on;
syms a3 a2 a1 a0
ex = [a3*t1^3 + a2*t1^2 + a1*t1 + a0 == px(1), ...
    a3*t2^3 + a2*t2^2 + a1*t2 + a0 == px(2), ...
    a3*t3^3 + a2*t3^2 + a1*t3 + a0 == px(3), ...
    a3*t4^3 + a2*t4^2 + a1*t4 + a0 == px(4)];
mx = solve(ex, [a3 a2 a1 a0])
syms t
x(t) = mx.a3 * t^3 + mx.a2 * t^2 +mx.a1 * t + mx.a0
syms b3 b2 b1 b0
ey = [b3*t1^3 + b2*t1^2 + b1*t1 + b0 == py(1), ...
    b3*t2^3 + b2*t2^2 + b1*t2 + b0 == py(2), ...
    b3*t3^3 + b2*t3^2 + b1*t3 + b0 == py(3), ...
    b3*t4^3 + b2*t4^2 + b1*t4 + b0 == py(4)];
my = solve(ey, [b3 b2 b1 b0])
y(t) = my.b3 * t^3 + my.b2 * t^2 +my.b1 * t + my.b0
fplot(x, y,[t1 t4], 'r')
