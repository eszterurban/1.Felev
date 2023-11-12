clear
px = [-3 3]; py = [1 3];
vx = [2 -2]; vy = [3 3];

syms a0 a1 a2 a3 b0 b1 b2 b3 t
t0=-1 ; t1=1;

plot(px, py, 'r*', 'MarkerSize', 20)
hold on;
quiver(px, py, vx, vy, 'g');

ex(t)=a3*t^3+a2*t^2+a1*t+a0;
ey(t)=b3*t^3+b2*t^2+b1*t+b0;

dx(t)=diff(ex, t);
dy(t)=diff(ey, t);

eq1=[ex(t0)==px(1)...
    ex(t1)==px(2)...
    dx(t0)==vx(1)...
    dx(t1)==vx(2)];
mx=solve(eq1, [a0, a1, a2, a3]);
x(t)=subs(ex, [a0,a1,a2,a3], [mx.a0, mx.a1, mx.a2, mx.a3]);

eq2=[ey(t0)==py(1)...
    ey(t1)==py(2)...
    dy(t0)==vy(1)...
    dy(t1)==vy(2)];
my=solve(eq2, [b0, b1, b2, b3]);
y(t)=subs(ey, [b0,b1,b2,b3], [my.b0, my.b1, my.b2, my.b3]);

fplot(x, y, [t0 t1], 'LineWidth', 2)

rx=[px(2) 10]; ry=[py(2) 6];
ux=[vx(2) 3]; uy=[vy(2), -6];

plot(rx, ry, 'b*', 'MarkerSize',10);
quiver(rx, ry, ux, uy);

t2=0; t3=1;

eq3=[ex(t2)==rx(1)...
    ex(t3)==rx(2)...
    dx(t2)==ux(1)...
    dx(t3)==ux(2)];
mx2=solve(eq3, [a0, a1, a2, a3]);
x2(t)=subs(ex, [a0,a1,a2,a3], [mx2.a0, mx2.a1, mx2.a2, mx2.a3]);

eq4=[ey(t2)==ry(1)...
    ey(t3)==ry(2)...
    dy(t2)==uy(1)...
    dy(t3)==uy(2)];
my2=solve(eq4, [b0, b1, b2, b3]);
y2(t)=subs(ey, [b0,b1,b2,b3], [my2.b0, my2.b1, my2.b2, my2.b3]);

fplot(x2, y2, [t2 t3], 'LineWidth', 2);