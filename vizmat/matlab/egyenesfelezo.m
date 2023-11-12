clear 
px = [ -1, 5  ]; 
py = [ -1, 3  ];
nx = [ -3, 0.5]; 
ny = [  1, 3  ];
plot (px, py, '*k'); hold on, axis equal;
quiver(px(1), py(1), nx(1), ny(1));
quiver(px(2), py(2), nx(2), ny(2));
syms x y;
F(x,y) = nx(1)*x + ny(1)*y - dot([nx(1),ny(1)],[px(1),py(1)]);
fimplicit(F, 'g');
G(x,y) = nx(2)*x + ny(2)*y - ... 
        dot([nx(2),ny(2)],[px(2),py(2)]);
fimplicit(G, 'b');
e = [F == 0, G == 0];
m = solve(e, [x y]);
M = [m.x, m.y];
plot (M(1), M(2), 'r.', 'MarkerSize', 20)