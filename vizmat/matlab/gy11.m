clear 
syms a0 a1 a2 a3 b0 b1 b2 b3 t
px=[-2 6]; py=[-2 -2]; vx=[6 4]; vy=[-4 4];
t0=0; t1=1;
hold on; axis equal;
plot(px, py, 'k.', 'MarkerSize', 20)
quiver(px(1), py(1), vx(1), vy(1)); 
quiver(px(2), py(2), vx(2), vy(2)); 

x(t)=a3*t^3+a2*t^2+a1*t+a0;
xd=diff(x, t);

ex=[x(t0) == px(1)... 
    xd(t0)== vx(1)... 
    x(t1) == px(2)...
    xd(t1) == vx(2)];
mx=solve(ex,[a0 a1 a2 a3]);
cx = subs(x, [a0 a1 a2 a3], [mx.a0, mx.a1, mx.a2, mx.a3])

y(t)=b3*t^3+b2*t^2+b1*t+b0;
yd=diff(y, t);

ey=[y(t0) == py(1)... 
    yd(t0)== vy(1)... 
    y(t1) == py(2)...
    yd(t1) == vy(2)];
my=solve(ey,[b0 b1 b2 b3]);
cy = subs(y, [b0 b1 b2 b3], [my.b0, my.b1, my.b2, my.b3])
fplot(cx, cy, [t0 t1], 'LineWidth', 1)

t2=2;
p3=[14 -4]; v2=[3 0];
plot(p3(1), p3(2), 'k.', 'MarkerSize', 20);
quiver(p3(1), p3(2), v2(1), v2(2));

rx=[x(t1) == px(2)... 
    xd(t1)== vx(2)... 
    x(t2) == p3(1)...
    xd(t2) == v2(1)];
mrx=solve(rx,[a0 a1 a2 a3]);
crx = subs(x, [a0 a1 a2 a3], [mrx.a0, mrx.a1, mrx.a2, mrx.a3])

ry=[y(t1) == py(2)... 
    yd(t1)== vy(2)... 
    y(t2) == p3(2)...
    yd(t2) == v2(2)];
mry=solve(ry,[b0 b1 b2 b3]);
cry = subs(y, [b0 b1 b2 b3], [mry.b0, mry.b1, mry.b2, mry.b3])

fplot(crx, cry, [t1 t2], 'LineWidth', 1)
