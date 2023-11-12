syms t
axis equal; hold on;
P=[0 0]; 
plot(P(1), P(2), 'k*')
r1=1;
bx(t)=P(1)+r1*cos(t); 
by(t)=P(2)+r1*sin(t); 
fplot(bx, by, [0 2*pi])

K=[2 1];
plot(K(1), K(2), 'k*')
r2=2;
cx(t)=K(1)+r2*cos(t); 
cy(t)=K(2)+r2*sin(t);
fplot(cx, cy, [0 pi])

syms u v
e=[bx(u)==cx(v), by==cy(v), u>=0, u<=pi];
m=solve(e, [u v]);

for i=1:length(m.u)
    M=[bx(m.u(i)),by(m.u(i))];
    plot(M(1),M(2),'g.','MarkerSize',20)
end