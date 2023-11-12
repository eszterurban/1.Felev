clear
syms x y z
f1(x, y, z) = x+y-z;
f2(x,y,z) = x-(2*y)+(3*z)-4;
f3(x,y,z) = (2*x)-(0.5*y)+(4*z)+2;
hold on;
fimplicit3(f1, 'r')
fimplicit3(f2, 'b')
fimplicit3(f3, 'g')
e=[f1==0, f2==0, f3==0];
m=solve(e,[x,y,z]);
M=[m.x, m.y, m.z];
plot3(M(1), M(2), M(3), 'y', 'MarkerSize',100);
