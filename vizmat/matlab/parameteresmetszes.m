clear;
px = [-2 0 -1 5]; py = [-2 0 1.5 -1];
plot (px, py, 'k*');
hold on; axis equal;
syms t
cx(t) = (1-t)*px(1) + t*px(2);
cy(t) = (1-t)*py(1) + t*py(2);
fplot (cx, cy, [0 1], 'g')
dx(t) = (1-t)*px(3) + t*px(4);
dy(t) = (1-t)*py(3) + t*py(4);
fplot (dx, dy, [0 1], 'b')
syms t0 t1
e = [cx(t0)==dx(t1), cy(t0)==dy(t1)];
m = solve(e, [t0, t1]);
M = [cx(m.t0), cy(m.t0)];
m.t0;
plot (M(1), M(2), 'r.', 'MarkerSize', 20)
%ha t0 t1 nem 0 es 1 kozott van nincs emsztespont 