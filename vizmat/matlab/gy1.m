clear 
syms u v
x(u,v) = u-((u^3)/3)+u*(v^2);
y(u,v) = v-((v^3)/3)+v*(u^2);
z(u,v) = (u^2)-(v^2); 
hold on; axis equal;
fsurf(x, y, z, [-25, 25, -25, 25])

u0 = 10;
v0 = 15;
plot3(x(u0, v0), y(u0, v0), z(u0, v0), 'r*', 'MarkerSize', 8); 

cx(u) = x(u, v0);
cy(u) = y(u, v0);
cz(u) = z(u, v0);
fplot3(cx, cy, cz, [-25 25 ],'b','LineWidth',1);

cxd = diff(cx, u);
cyd = diff(cy, u);
czd = diff(cz, u);
quiver3(x(u0, v0), y(u0, v0), z(u0, v0), cxd(u0), cyd(u0), czd(u0), 'w', 'LineWidth', 7)

dx(v) = x(u0, v);
dy(v) = y(u0, v);
dz(v) = z(u0, v);
fplot3(dx, dy, dz, [-25 25 ],'b','LineWidth',1);

dxd = diff(dx, v);
dyd = diff(dy, v);
dzd = diff(dz, v);
quiver3(x(u0, v0), y(u0, v0), z(u0, v0), dxd(v0), dyd(v0), dzd(v0), 'c', 'LineWidth', 7)

a = [cxd(u0), cyd(u0), czd(u0)];
b = [dxd(v0), dyd(v0), dzd(v0)];
normalvektor=(cross(b, a))/100;

quiver3(x(u0,v0), y(u0,v0), z(u0,v0), normalvektor(1), normalvektor(2), normalvektor(3), 'r', 'LineWidth', 3) 
