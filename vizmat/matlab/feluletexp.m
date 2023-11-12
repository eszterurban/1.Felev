clear
syms x y
f(x,y)=sin(x)+cos(y);
fsurf(f)
axis equal
hold on
plot3(2, 3, f(2,3), 'g*', 'MarkerSize', 8)
%figure: külön oldara rakja őket
fimplicit(f, 'b', 'LineWidth', 3)