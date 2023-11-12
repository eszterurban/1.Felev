clear
px=[0 0 1 1]; py=[0 1 0 1]; pz=[0 1 1 0];
syms u v t
cx(t) = (1-t)*px(1) +t*px(2);
cy(t) = (1-t)*py(1) +t*py(2);
cz(t) = (1-t)*pz(1) +t*pz(2);

dx(t) = (1-t)*px(3) +t*px(4);
dy(t) = (1-t)*py(3) +t*py(4);
dz(t) = (1-t)*pz(3) +t*pz(4);

x(u,v) = (1-v)*cx(u) + v*dx(u);
y(u,v) = (1-v)*cy(u) + v*dy(u);
z(u,v) = (1-v)*cz(u) + v*dz(u);

fsurf(x, y, z, [0 1 0 1], 'b');
hold on;

u1=0.5;
ux(v) = x(u1, v);
uy(v) = y(u1, v);
uz(v) = z(u1, v);

vx(u) = x(u, u1);
vy(u) = y(u, u1);
vz(u) = z(u, u1);

fplot3(ux, uy, uz, [0 1]);
fplot3(vx, vy, vz, [0 1]);