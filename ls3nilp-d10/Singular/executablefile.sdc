LIB "freegb.lib";
ring r = 0,(x,y,z,t),dp;
int d = 10;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = 3*x(1)*y(2)*x(3)*x(4)-y(1)*x(2)*x(3)*x(4)-3*x(1)*x(2)*y(3)*x(4)+x(1)*x(2)*x(3)*y(4),
2*x(1)*y(2)*x(3)*y(4)-x(1)*x(2)*y(3)*y(4)-2*y(1)*x(2)*y(3)*x(4)+y(1)*y(2)*x(3)*x(4),
2*x(1)*y(2)*x(3)*z(4)-y(1)*x(2)*x(3)*z(4)-x(1)*x(2)*y(3)*z(4)-2*z(1)*x(2)*y(3)*x(4)+z(1)*y(2)*x(3)*x(4)+z(1)*x(2)*x(3)*y(4),
2*x(1)*y(2)*x(3)*t(4)-y(1)*x(2)*x(3)*t(4)-x(1)*x(2)*y(3)*t(4)-2*t(1)*x(2)*y(3)*x(4)+t(1)*y(2)*x(3)*x(4)+t(1)*x(2)*x(3)*y(4),
2*x(1)*y(2)*x(3)*y(4)-x(1)*x(2)*y(3)*y(4)-2*y(1)*x(2)*y(3)*x(4)+y(1)*y(2)*x(3)*x(4),
x(1)*y(2)*y(3)*y(4)-3*y(1)*x(2)*y(3)*y(4)+3*y(1)*y(2)*x(3)*y(4)-y(1)*y(2)*y(3)*x(4),
x(1)*y(2)*y(3)*z(4)-2*y(1)*x(2)*y(3)*z(4)+y(1)*y(2)*x(3)*z(4)-z(1)*x(2)*y(3)*y(4)+2*z(1)*y(2)*x(3)*y(4)-z(1)*y(2)*y(3)*x(4),
x(1)*y(2)*y(3)*t(4)-2*y(1)*x(2)*y(3)*t(4)+y(1)*y(2)*x(3)*t(4)-t(1)*x(2)*y(3)*y(4)+2*t(1)*y(2)*x(3)*y(4)-t(1)*y(2)*y(3)*x(4),
x(1)*y(2)*z(3)*x(4)-y(1)*x(2)*z(3)*x(4)-z(1)*x(2)*y(3)*x(4)+z(1)*y(2)*x(3)*x(4)-x(1)*x(2)*y(3)*z(4)+x(1)*y(2)*x(3)*z(4)+x(1)*z(2)*x(3)*y(4)-x(1)*z(2)*y(3)*x(4),
x(1)*y(2)*z(3)*y(4)-y(1)*x(2)*z(3)*y(4)-z(1)*x(2)*y(3)*y(4)+z(1)*y(2)*x(3)*y(4)-y(1)*x(2)*y(3)*z(4)+y(1)*y(2)*x(3)*z(4)+y(1)*z(2)*x(3)*y(4)-y(1)*z(2)*y(3)*x(4),
x(1)*y(2)*z(3)*z(4)-y(1)*x(2)*z(3)*z(4)-2*z(1)*x(2)*y(3)*z(4)+2*z(1)*y(2)*x(3)*z(4)+z(1)*z(2)*x(3)*y(4)-z(1)*z(2)*y(3)*x(4),
x(1)*y(2)*z(3)*t(4)-y(1)*x(2)*z(3)*t(4)-z(1)*x(2)*y(3)*t(4)+z(1)*y(2)*x(3)*t(4)-t(1)*x(2)*y(3)*z(4)+t(1)*y(2)*x(3)*z(4)+t(1)*z(2)*x(3)*y(4)-t(1)*z(2)*y(3)*x(4),
x(1)*y(2)*t(3)*x(4)-y(1)*x(2)*t(3)*x(4)-t(1)*x(2)*y(3)*x(4)+t(1)*y(2)*x(3)*x(4)-x(1)*x(2)*y(3)*t(4)+x(1)*y(2)*x(3)*t(4)+x(1)*t(2)*x(3)*y(4)-x(1)*t(2)*y(3)*x(4),
x(1)*y(2)*t(3)*y(4)-y(1)*x(2)*t(3)*y(4)-t(1)*x(2)*y(3)*y(4)+t(1)*y(2)*x(3)*y(4)-y(1)*x(2)*y(3)*t(4)+y(1)*y(2)*x(3)*t(4)+y(1)*t(2)*x(3)*y(4)-y(1)*t(2)*y(3)*x(4),
x(1)*y(2)*t(3)*z(4)-y(1)*x(2)*t(3)*z(4)-t(1)*x(2)*y(3)*z(4)+t(1)*y(2)*x(3)*z(4)-z(1)*x(2)*y(3)*t(4)+z(1)*y(2)*x(3)*t(4)+z(1)*t(2)*x(3)*y(4)-z(1)*t(2)*y(3)*x(4),
x(1)*y(2)*t(3)*t(4)-y(1)*x(2)*t(3)*t(4)-2*t(1)*x(2)*y(3)*t(4)+2*t(1)*y(2)*x(3)*t(4)+t(1)*t(2)*x(3)*y(4)-t(1)*t(2)*y(3)*x(4),
3*x(1)*z(2)*x(3)*x(4)-z(1)*x(2)*x(3)*x(4)-3*x(1)*x(2)*z(3)*x(4)+x(1)*x(2)*x(3)*z(4),
2*x(1)*z(2)*x(3)*y(4)-z(1)*x(2)*x(3)*y(4)-x(1)*x(2)*z(3)*y(4)-2*y(1)*x(2)*z(3)*x(4)+y(1)*z(2)*x(3)*x(4)+y(1)*x(2)*x(3)*z(4),
2*x(1)*z(2)*x(3)*z(4)-x(1)*x(2)*z(3)*z(4)-2*z(1)*x(2)*z(3)*x(4)+z(1)*z(2)*x(3)*x(4),
2*x(1)*z(2)*x(3)*t(4)-z(1)*x(2)*x(3)*t(4)-x(1)*x(2)*z(3)*t(4)-2*t(1)*x(2)*z(3)*x(4)+t(1)*z(2)*x(3)*x(4)+t(1)*x(2)*x(3)*z(4),
x(1)*z(2)*y(3)*x(4)-z(1)*x(2)*y(3)*x(4)-y(1)*x(2)*z(3)*x(4)+y(1)*z(2)*x(3)*x(4)-x(1)*x(2)*z(3)*y(4)+x(1)*z(2)*x(3)*y(4)+x(1)*y(2)*x(3)*z(4)-x(1)*y(2)*z(3)*x(4),
x(1)*z(2)*y(3)*y(4)-z(1)*x(2)*y(3)*y(4)-2*y(1)*x(2)*z(3)*y(4)+2*y(1)*z(2)*x(3)*y(4)+y(1)*y(2)*x(3)*z(4)-y(1)*y(2)*z(3)*x(4),
x(1)*z(2)*y(3)*z(4)-z(1)*x(2)*y(3)*z(4)-y(1)*x(2)*z(3)*z(4)+y(1)*z(2)*x(3)*z(4)-z(1)*x(2)*z(3)*y(4)+z(1)*z(2)*x(3)*y(4)+z(1)*y(2)*x(3)*z(4)-z(1)*y(2)*z(3)*x(4),
x(1)*z(2)*y(3)*t(4)-z(1)*x(2)*y(3)*t(4)-y(1)*x(2)*z(3)*t(4)+y(1)*z(2)*x(3)*t(4)-t(1)*x(2)*z(3)*y(4)+t(1)*z(2)*x(3)*y(4)+t(1)*y(2)*x(3)*z(4)-t(1)*y(2)*z(3)*x(4),
2*x(1)*z(2)*x(3)*z(4)-x(1)*x(2)*z(3)*z(4)-2*z(1)*x(2)*z(3)*x(4)+z(1)*z(2)*x(3)*x(4),
x(1)*z(2)*z(3)*y(4)-2*z(1)*x(2)*z(3)*y(4)+z(1)*z(2)*x(3)*y(4)-y(1)*x(2)*z(3)*z(4)+2*y(1)*z(2)*x(3)*z(4)-y(1)*z(2)*z(3)*x(4),
x(1)*z(2)*z(3)*z(4)-3*z(1)*x(2)*z(3)*z(4)+3*z(1)*z(2)*x(3)*z(4)-z(1)*z(2)*z(3)*x(4),
x(1)*z(2)*z(3)*t(4)-2*z(1)*x(2)*z(3)*t(4)+z(1)*z(2)*x(3)*t(4)-t(1)*x(2)*z(3)*z(4)+2*t(1)*z(2)*x(3)*z(4)-t(1)*z(2)*z(3)*x(4),
x(1)*z(2)*t(3)*x(4)-z(1)*x(2)*t(3)*x(4)-t(1)*x(2)*z(3)*x(4)+t(1)*z(2)*x(3)*x(4)-x(1)*x(2)*z(3)*t(4)+x(1)*z(2)*x(3)*t(4)+x(1)*t(2)*x(3)*z(4)-x(1)*t(2)*z(3)*x(4),
x(1)*z(2)*t(3)*y(4)-z(1)*x(2)*t(3)*y(4)-t(1)*x(2)*z(3)*y(4)+t(1)*z(2)*x(3)*y(4)-y(1)*x(2)*z(3)*t(4)+y(1)*z(2)*x(3)*t(4)+y(1)*t(2)*x(3)*z(4)-y(1)*t(2)*z(3)*x(4),
x(1)*z(2)*t(3)*z(4)-z(1)*x(2)*t(3)*z(4)-t(1)*x(2)*z(3)*z(4)+t(1)*z(2)*x(3)*z(4)-z(1)*x(2)*z(3)*t(4)+z(1)*z(2)*x(3)*t(4)+z(1)*t(2)*x(3)*z(4)-z(1)*t(2)*z(3)*x(4),
x(1)*z(2)*t(3)*t(4)-z(1)*x(2)*t(3)*t(4)-2*t(1)*x(2)*z(3)*t(4)+2*t(1)*z(2)*x(3)*t(4)+t(1)*t(2)*x(3)*z(4)-t(1)*t(2)*z(3)*x(4),
3*x(1)*t(2)*x(3)*x(4)-t(1)*x(2)*x(3)*x(4)-3*x(1)*x(2)*t(3)*x(4)+x(1)*x(2)*x(3)*t(4),
2*x(1)*t(2)*x(3)*y(4)-t(1)*x(2)*x(3)*y(4)-x(1)*x(2)*t(3)*y(4)-2*y(1)*x(2)*t(3)*x(4)+y(1)*t(2)*x(3)*x(4)+y(1)*x(2)*x(3)*t(4),
2*x(1)*t(2)*x(3)*z(4)-t(1)*x(2)*x(3)*z(4)-x(1)*x(2)*t(3)*z(4)-2*z(1)*x(2)*t(3)*x(4)+z(1)*t(2)*x(3)*x(4)+z(1)*x(2)*x(3)*t(4),
2*x(1)*t(2)*x(3)*t(4)-x(1)*x(2)*t(3)*t(4)-2*t(1)*x(2)*t(3)*x(4)+t(1)*t(2)*x(3)*x(4),
x(1)*t(2)*y(3)*x(4)-t(1)*x(2)*y(3)*x(4)-y(1)*x(2)*t(3)*x(4)+y(1)*t(2)*x(3)*x(4)-x(1)*x(2)*t(3)*y(4)+x(1)*t(2)*x(3)*y(4)+x(1)*y(2)*x(3)*t(4)-x(1)*y(2)*t(3)*x(4),
x(1)*t(2)*y(3)*y(4)-t(1)*x(2)*y(3)*y(4)-2*y(1)*x(2)*t(3)*y(4)+2*y(1)*t(2)*x(3)*y(4)+y(1)*y(2)*x(3)*t(4)-y(1)*y(2)*t(3)*x(4),
x(1)*t(2)*y(3)*z(4)-t(1)*x(2)*y(3)*z(4)-y(1)*x(2)*t(3)*z(4)+y(1)*t(2)*x(3)*z(4)-z(1)*x(2)*t(3)*y(4)+z(1)*t(2)*x(3)*y(4)+z(1)*y(2)*x(3)*t(4)-z(1)*y(2)*t(3)*x(4),
x(1)*t(2)*y(3)*t(4)-t(1)*x(2)*y(3)*t(4)-y(1)*x(2)*t(3)*t(4)+y(1)*t(2)*x(3)*t(4)-t(1)*x(2)*t(3)*y(4)+t(1)*t(2)*x(3)*y(4)+t(1)*y(2)*x(3)*t(4)-t(1)*y(2)*t(3)*x(4),
x(1)*t(2)*z(3)*x(4)-t(1)*x(2)*z(3)*x(4)-z(1)*x(2)*t(3)*x(4)+z(1)*t(2)*x(3)*x(4)-x(1)*x(2)*t(3)*z(4)+x(1)*t(2)*x(3)*z(4)+x(1)*z(2)*x(3)*t(4)-x(1)*z(2)*t(3)*x(4),
x(1)*t(2)*z(3)*y(4)-t(1)*x(2)*z(3)*y(4)-z(1)*x(2)*t(3)*y(4)+z(1)*t(2)*x(3)*y(4)-y(1)*x(2)*t(3)*z(4)+y(1)*t(2)*x(3)*z(4)+y(1)*z(2)*x(3)*t(4)-y(1)*z(2)*t(3)*x(4),
x(1)*t(2)*z(3)*z(4)-t(1)*x(2)*z(3)*z(4)-2*z(1)*x(2)*t(3)*z(4)+2*z(1)*t(2)*x(3)*z(4)+z(1)*z(2)*x(3)*t(4)-z(1)*z(2)*t(3)*x(4),
x(1)*t(2)*z(3)*t(4)-t(1)*x(2)*z(3)*t(4)-z(1)*x(2)*t(3)*t(4)+z(1)*t(2)*x(3)*t(4)-t(1)*x(2)*t(3)*z(4)+t(1)*t(2)*x(3)*z(4)+t(1)*z(2)*x(3)*t(4)-t(1)*z(2)*t(3)*x(4),
2*x(1)*t(2)*x(3)*t(4)-x(1)*x(2)*t(3)*t(4)-2*t(1)*x(2)*t(3)*x(4)+t(1)*t(2)*x(3)*x(4),
x(1)*t(2)*t(3)*y(4)-2*t(1)*x(2)*t(3)*y(4)+t(1)*t(2)*x(3)*y(4)-y(1)*x(2)*t(3)*t(4)+2*y(1)*t(2)*x(3)*t(4)-y(1)*t(2)*t(3)*x(4),
x(1)*t(2)*t(3)*z(4)-2*t(1)*x(2)*t(3)*z(4)+t(1)*t(2)*x(3)*z(4)-z(1)*x(2)*t(3)*t(4)+2*z(1)*t(2)*x(3)*t(4)-z(1)*t(2)*t(3)*x(4),
x(1)*t(2)*t(3)*t(4)-3*t(1)*x(2)*t(3)*t(4)+3*t(1)*t(2)*x(3)*t(4)-t(1)*t(2)*t(3)*x(4),
y(1)*x(2)*x(3)*x(4)-3*x(1)*y(2)*x(3)*x(4)+3*x(1)*x(2)*y(3)*x(4)-x(1)*x(2)*x(3)*y(4),
-2*x(1)*y(2)*x(3)*y(4)+x(1)*x(2)*y(3)*y(4)-y(1)*y(2)*x(3)*x(4)+2*y(1)*x(2)*y(3)*x(4),
y(1)*x(2)*x(3)*z(4)-2*x(1)*y(2)*x(3)*z(4)+x(1)*x(2)*y(3)*z(4)-z(1)*y(2)*x(3)*x(4)+2*z(1)*x(2)*y(3)*x(4)-z(1)*x(2)*x(3)*y(4),
y(1)*x(2)*x(3)*t(4)-2*x(1)*y(2)*x(3)*t(4)+x(1)*x(2)*y(3)*t(4)-t(1)*y(2)*x(3)*x(4)+2*t(1)*x(2)*y(3)*x(4)-t(1)*x(2)*x(3)*y(4),
-2*x(1)*y(2)*x(3)*y(4)+x(1)*x(2)*y(3)*y(4)-y(1)*y(2)*x(3)*x(4)+2*y(1)*x(2)*y(3)*x(4),
3*y(1)*x(2)*y(3)*y(4)-x(1)*y(2)*y(3)*y(4)-3*y(1)*y(2)*x(3)*y(4)+y(1)*y(2)*y(3)*x(4),
2*y(1)*x(2)*y(3)*z(4)-x(1)*y(2)*y(3)*z(4)-y(1)*y(2)*x(3)*z(4)-2*z(1)*y(2)*x(3)*y(4)+z(1)*x(2)*y(3)*y(4)+z(1)*y(2)*y(3)*x(4),
2*y(1)*x(2)*y(3)*t(4)-x(1)*y(2)*y(3)*t(4)-y(1)*y(2)*x(3)*t(4)-2*t(1)*y(2)*x(3)*y(4)+t(1)*x(2)*y(3)*y(4)+t(1)*y(2)*y(3)*x(4),
y(1)*x(2)*z(3)*x(4)-x(1)*y(2)*z(3)*x(4)-z(1)*y(2)*x(3)*x(4)+z(1)*x(2)*y(3)*x(4)-x(1)*y(2)*x(3)*z(4)+x(1)*x(2)*y(3)*z(4)+x(1)*z(2)*y(3)*x(4)-x(1)*z(2)*x(3)*y(4),
y(1)*x(2)*z(3)*y(4)-x(1)*y(2)*z(3)*y(4)-z(1)*y(2)*x(3)*y(4)+z(1)*x(2)*y(3)*y(4)-y(1)*y(2)*x(3)*z(4)+y(1)*x(2)*y(3)*z(4)+y(1)*z(2)*y(3)*x(4)-y(1)*z(2)*x(3)*y(4),
y(1)*x(2)*z(3)*z(4)-x(1)*y(2)*z(3)*z(4)-2*z(1)*y(2)*x(3)*z(4)+2*z(1)*x(2)*y(3)*z(4)+z(1)*z(2)*y(3)*x(4)-z(1)*z(2)*x(3)*y(4),
y(1)*x(2)*z(3)*t(4)-x(1)*y(2)*z(3)*t(4)-z(1)*y(2)*x(3)*t(4)+z(1)*x(2)*y(3)*t(4)-t(1)*y(2)*x(3)*z(4)+t(1)*x(2)*y(3)*z(4)+t(1)*z(2)*y(3)*x(4)-t(1)*z(2)*x(3)*y(4),
y(1)*x(2)*t(3)*x(4)-x(1)*y(2)*t(3)*x(4)-t(1)*y(2)*x(3)*x(4)+t(1)*x(2)*y(3)*x(4)-x(1)*y(2)*x(3)*t(4)+x(1)*x(2)*y(3)*t(4)+x(1)*t(2)*y(3)*x(4)-x(1)*t(2)*x(3)*y(4),
y(1)*x(2)*t(3)*y(4)-x(1)*y(2)*t(3)*y(4)-t(1)*y(2)*x(3)*y(4)+t(1)*x(2)*y(3)*y(4)-y(1)*y(2)*x(3)*t(4)+y(1)*x(2)*y(3)*t(4)+y(1)*t(2)*y(3)*x(4)-y(1)*t(2)*x(3)*y(4),
y(1)*x(2)*t(3)*z(4)-x(1)*y(2)*t(3)*z(4)-t(1)*y(2)*x(3)*z(4)+t(1)*x(2)*y(3)*z(4)-z(1)*y(2)*x(3)*t(4)+z(1)*x(2)*y(3)*t(4)+z(1)*t(2)*y(3)*x(4)-z(1)*t(2)*x(3)*y(4),
y(1)*x(2)*t(3)*t(4)-x(1)*y(2)*t(3)*t(4)-2*t(1)*y(2)*x(3)*t(4)+2*t(1)*x(2)*y(3)*t(4)+t(1)*t(2)*y(3)*x(4)-t(1)*t(2)*x(3)*y(4),
y(1)*z(2)*x(3)*x(4)-z(1)*y(2)*x(3)*x(4)-2*x(1)*y(2)*z(3)*x(4)+2*x(1)*z(2)*y(3)*x(4)+x(1)*x(2)*y(3)*z(4)-x(1)*x(2)*z(3)*y(4),
y(1)*z(2)*x(3)*y(4)-z(1)*y(2)*x(3)*y(4)-x(1)*y(2)*z(3)*y(4)+x(1)*z(2)*y(3)*y(4)-y(1)*y(2)*z(3)*x(4)+y(1)*z(2)*y(3)*x(4)+y(1)*x(2)*y(3)*z(4)-y(1)*x(2)*z(3)*y(4),
y(1)*z(2)*x(3)*z(4)-z(1)*y(2)*x(3)*z(4)-x(1)*y(2)*z(3)*z(4)+x(1)*z(2)*y(3)*z(4)-z(1)*y(2)*z(3)*x(4)+z(1)*z(2)*y(3)*x(4)+z(1)*x(2)*y(3)*z(4)-z(1)*x(2)*z(3)*y(4),
y(1)*z(2)*x(3)*t(4)-z(1)*y(2)*x(3)*t(4)-x(1)*y(2)*z(3)*t(4)+x(1)*z(2)*y(3)*t(4)-t(1)*y(2)*z(3)*x(4)+t(1)*z(2)*y(3)*x(4)+t(1)*x(2)*y(3)*z(4)-t(1)*x(2)*z(3)*y(4),
2*y(1)*z(2)*y(3)*x(4)-z(1)*y(2)*y(3)*x(4)-y(1)*y(2)*z(3)*x(4)-2*x(1)*y(2)*z(3)*y(4)+x(1)*z(2)*y(3)*y(4)+x(1)*y(2)*y(3)*z(4),
3*y(1)*z(2)*y(3)*y(4)-z(1)*y(2)*y(3)*y(4)-3*y(1)*y(2)*z(3)*y(4)+y(1)*y(2)*y(3)*z(4),
2*y(1)*z(2)*y(3)*z(4)-y(1)*y(2)*z(3)*z(4)-2*z(1)*y(2)*z(3)*y(4)+z(1)*z(2)*y(3)*y(4),
2*y(1)*z(2)*y(3)*t(4)-z(1)*y(2)*y(3)*t(4)-y(1)*y(2)*z(3)*t(4)-2*t(1)*y(2)*z(3)*y(4)+t(1)*z(2)*y(3)*y(4)+t(1)*y(2)*y(3)*z(4),
y(1)*z(2)*z(3)*x(4)-2*z(1)*y(2)*z(3)*x(4)+z(1)*z(2)*y(3)*x(4)-x(1)*y(2)*z(3)*z(4)+2*x(1)*z(2)*y(3)*z(4)-x(1)*z(2)*z(3)*y(4),
2*y(1)*z(2)*y(3)*z(4)-y(1)*y(2)*z(3)*z(4)-2*z(1)*y(2)*z(3)*y(4)+z(1)*z(2)*y(3)*y(4),
y(1)*z(2)*z(3)*z(4)-3*z(1)*y(2)*z(3)*z(4)+3*z(1)*z(2)*y(3)*z(4)-z(1)*z(2)*z(3)*y(4),
y(1)*z(2)*z(3)*t(4)-2*z(1)*y(2)*z(3)*t(4)+z(1)*z(2)*y(3)*t(4)-t(1)*y(2)*z(3)*z(4)+2*t(1)*z(2)*y(3)*z(4)-t(1)*z(2)*z(3)*y(4),
y(1)*z(2)*t(3)*x(4)-z(1)*y(2)*t(3)*x(4)-t(1)*y(2)*z(3)*x(4)+t(1)*z(2)*y(3)*x(4)-x(1)*y(2)*z(3)*t(4)+x(1)*z(2)*y(3)*t(4)+x(1)*t(2)*y(3)*z(4)-x(1)*t(2)*z(3)*y(4),
y(1)*z(2)*t(3)*y(4)-z(1)*y(2)*t(3)*y(4)-t(1)*y(2)*z(3)*y(4)+t(1)*z(2)*y(3)*y(4)-y(1)*y(2)*z(3)*t(4)+y(1)*z(2)*y(3)*t(4)+y(1)*t(2)*y(3)*z(4)-y(1)*t(2)*z(3)*y(4),
y(1)*z(2)*t(3)*z(4)-z(1)*y(2)*t(3)*z(4)-t(1)*y(2)*z(3)*z(4)+t(1)*z(2)*y(3)*z(4)-z(1)*y(2)*z(3)*t(4)+z(1)*z(2)*y(3)*t(4)+z(1)*t(2)*y(3)*z(4)-z(1)*t(2)*z(3)*y(4),
y(1)*z(2)*t(3)*t(4)-z(1)*y(2)*t(3)*t(4)-2*t(1)*y(2)*z(3)*t(4)+2*t(1)*z(2)*y(3)*t(4)+t(1)*t(2)*y(3)*z(4)-t(1)*t(2)*z(3)*y(4),
y(1)*t(2)*x(3)*x(4)-t(1)*y(2)*x(3)*x(4)-2*x(1)*y(2)*t(3)*x(4)+2*x(1)*t(2)*y(3)*x(4)+x(1)*x(2)*y(3)*t(4)-x(1)*x(2)*t(3)*y(4),
y(1)*t(2)*x(3)*y(4)-t(1)*y(2)*x(3)*y(4)-x(1)*y(2)*t(3)*y(4)+x(1)*t(2)*y(3)*y(4)-y(1)*y(2)*t(3)*x(4)+y(1)*t(2)*y(3)*x(4)+y(1)*x(2)*y(3)*t(4)-y(1)*x(2)*t(3)*y(4),
y(1)*t(2)*x(3)*z(4)-t(1)*y(2)*x(3)*z(4)-x(1)*y(2)*t(3)*z(4)+x(1)*t(2)*y(3)*z(4)-z(1)*y(2)*t(3)*x(4)+z(1)*t(2)*y(3)*x(4)+z(1)*x(2)*y(3)*t(4)-z(1)*x(2)*t(3)*y(4),
y(1)*t(2)*x(3)*t(4)-t(1)*y(2)*x(3)*t(4)-x(1)*y(2)*t(3)*t(4)+x(1)*t(2)*y(3)*t(4)-t(1)*y(2)*t(3)*x(4)+t(1)*t(2)*y(3)*x(4)+t(1)*x(2)*y(3)*t(4)-t(1)*x(2)*t(3)*y(4),
2*y(1)*t(2)*y(3)*x(4)-t(1)*y(2)*y(3)*x(4)-y(1)*y(2)*t(3)*x(4)-2*x(1)*y(2)*t(3)*y(4)+x(1)*t(2)*y(3)*y(4)+x(1)*y(2)*y(3)*t(4),
3*y(1)*t(2)*y(3)*y(4)-t(1)*y(2)*y(3)*y(4)-3*y(1)*y(2)*t(3)*y(4)+y(1)*y(2)*y(3)*t(4),
2*y(1)*t(2)*y(3)*z(4)-t(1)*y(2)*y(3)*z(4)-y(1)*y(2)*t(3)*z(4)-2*z(1)*y(2)*t(3)*y(4)+z(1)*t(2)*y(3)*y(4)+z(1)*y(2)*y(3)*t(4),
2*y(1)*t(2)*y(3)*t(4)-y(1)*y(2)*t(3)*t(4)-2*t(1)*y(2)*t(3)*y(4)+t(1)*t(2)*y(3)*y(4),
y(1)*t(2)*z(3)*x(4)-t(1)*y(2)*z(3)*x(4)-z(1)*y(2)*t(3)*x(4)+z(1)*t(2)*y(3)*x(4)-x(1)*y(2)*t(3)*z(4)+x(1)*t(2)*y(3)*z(4)+x(1)*z(2)*y(3)*t(4)-x(1)*z(2)*t(3)*y(4),
y(1)*t(2)*z(3)*y(4)-t(1)*y(2)*z(3)*y(4)-z(1)*y(2)*t(3)*y(4)+z(1)*t(2)*y(3)*y(4)-y(1)*y(2)*t(3)*z(4)+y(1)*t(2)*y(3)*z(4)+y(1)*z(2)*y(3)*t(4)-y(1)*z(2)*t(3)*y(4),
y(1)*t(2)*z(3)*z(4)-t(1)*y(2)*z(3)*z(4)-2*z(1)*y(2)*t(3)*z(4)+2*z(1)*t(2)*y(3)*z(4)+z(1)*z(2)*y(3)*t(4)-z(1)*z(2)*t(3)*y(4),
y(1)*t(2)*z(3)*t(4)-t(1)*y(2)*z(3)*t(4)-z(1)*y(2)*t(3)*t(4)+z(1)*t(2)*y(3)*t(4)-t(1)*y(2)*t(3)*z(4)+t(1)*t(2)*y(3)*z(4)+t(1)*z(2)*y(3)*t(4)-t(1)*z(2)*t(3)*y(4),
y(1)*t(2)*t(3)*x(4)-2*t(1)*y(2)*t(3)*x(4)+t(1)*t(2)*y(3)*x(4)-x(1)*y(2)*t(3)*t(4)+2*x(1)*t(2)*y(3)*t(4)-x(1)*t(2)*t(3)*y(4),
2*y(1)*t(2)*y(3)*t(4)-y(1)*y(2)*t(3)*t(4)-2*t(1)*y(2)*t(3)*y(4)+t(1)*t(2)*y(3)*y(4),
y(1)*t(2)*t(3)*z(4)-2*t(1)*y(2)*t(3)*z(4)+t(1)*t(2)*y(3)*z(4)-z(1)*y(2)*t(3)*t(4)+2*z(1)*t(2)*y(3)*t(4)-z(1)*t(2)*t(3)*y(4),
y(1)*t(2)*t(3)*t(4)-3*t(1)*y(2)*t(3)*t(4)+3*t(1)*t(2)*y(3)*t(4)-t(1)*t(2)*t(3)*y(4),
z(1)*x(2)*x(3)*x(4)-3*x(1)*z(2)*x(3)*x(4)+3*x(1)*x(2)*z(3)*x(4)-x(1)*x(2)*x(3)*z(4),
z(1)*x(2)*x(3)*y(4)-2*x(1)*z(2)*x(3)*y(4)+x(1)*x(2)*z(3)*y(4)-y(1)*z(2)*x(3)*x(4)+2*y(1)*x(2)*z(3)*x(4)-y(1)*x(2)*x(3)*z(4),
-2*x(1)*z(2)*x(3)*z(4)+x(1)*x(2)*z(3)*z(4)-z(1)*z(2)*x(3)*x(4)+2*z(1)*x(2)*z(3)*x(4),
z(1)*x(2)*x(3)*t(4)-2*x(1)*z(2)*x(3)*t(4)+x(1)*x(2)*z(3)*t(4)-t(1)*z(2)*x(3)*x(4)+2*t(1)*x(2)*z(3)*x(4)-t(1)*x(2)*x(3)*z(4),
z(1)*x(2)*y(3)*x(4)-x(1)*z(2)*y(3)*x(4)-y(1)*z(2)*x(3)*x(4)+y(1)*x(2)*z(3)*x(4)-x(1)*z(2)*x(3)*y(4)+x(1)*x(2)*z(3)*y(4)+x(1)*y(2)*z(3)*x(4)-x(1)*y(2)*x(3)*z(4),
z(1)*x(2)*y(3)*y(4)-x(1)*z(2)*y(3)*y(4)-2*y(1)*z(2)*x(3)*y(4)+2*y(1)*x(2)*z(3)*y(4)+y(1)*y(2)*z(3)*x(4)-y(1)*y(2)*x(3)*z(4),
z(1)*x(2)*y(3)*z(4)-x(1)*z(2)*y(3)*z(4)-y(1)*z(2)*x(3)*z(4)+y(1)*x(2)*z(3)*z(4)-z(1)*z(2)*x(3)*y(4)+z(1)*x(2)*z(3)*y(4)+z(1)*y(2)*z(3)*x(4)-z(1)*y(2)*x(3)*z(4),
z(1)*x(2)*y(3)*t(4)-x(1)*z(2)*y(3)*t(4)-y(1)*z(2)*x(3)*t(4)+y(1)*x(2)*z(3)*t(4)-t(1)*z(2)*x(3)*y(4)+t(1)*x(2)*z(3)*y(4)+t(1)*y(2)*z(3)*x(4)-t(1)*y(2)*x(3)*z(4),
-2*x(1)*z(2)*x(3)*z(4)+x(1)*x(2)*z(3)*z(4)-z(1)*z(2)*x(3)*x(4)+2*z(1)*x(2)*z(3)*x(4),
2*z(1)*x(2)*z(3)*y(4)-x(1)*z(2)*z(3)*y(4)-z(1)*z(2)*x(3)*y(4)-2*y(1)*z(2)*x(3)*z(4)+y(1)*x(2)*z(3)*z(4)+y(1)*z(2)*z(3)*x(4),
3*z(1)*x(2)*z(3)*z(4)-x(1)*z(2)*z(3)*z(4)-3*z(1)*z(2)*x(3)*z(4)+z(1)*z(2)*z(3)*x(4),
2*z(1)*x(2)*z(3)*t(4)-x(1)*z(2)*z(3)*t(4)-z(1)*z(2)*x(3)*t(4)-2*t(1)*z(2)*x(3)*z(4)+t(1)*x(2)*z(3)*z(4)+t(1)*z(2)*z(3)*x(4),
z(1)*x(2)*t(3)*x(4)-x(1)*z(2)*t(3)*x(4)-t(1)*z(2)*x(3)*x(4)+t(1)*x(2)*z(3)*x(4)-x(1)*z(2)*x(3)*t(4)+x(1)*x(2)*z(3)*t(4)+x(1)*t(2)*z(3)*x(4)-x(1)*t(2)*x(3)*z(4),
z(1)*x(2)*t(3)*y(4)-x(1)*z(2)*t(3)*y(4)-t(1)*z(2)*x(3)*y(4)+t(1)*x(2)*z(3)*y(4)-y(1)*z(2)*x(3)*t(4)+y(1)*x(2)*z(3)*t(4)+y(1)*t(2)*z(3)*x(4)-y(1)*t(2)*x(3)*z(4),
z(1)*x(2)*t(3)*z(4)-x(1)*z(2)*t(3)*z(4)-t(1)*z(2)*x(3)*z(4)+t(1)*x(2)*z(3)*z(4)-z(1)*z(2)*x(3)*t(4)+z(1)*x(2)*z(3)*t(4)+z(1)*t(2)*z(3)*x(4)-z(1)*t(2)*x(3)*z(4),
z(1)*x(2)*t(3)*t(4)-x(1)*z(2)*t(3)*t(4)-2*t(1)*z(2)*x(3)*t(4)+2*t(1)*x(2)*z(3)*t(4)+t(1)*t(2)*z(3)*x(4)-t(1)*t(2)*x(3)*z(4),
z(1)*y(2)*x(3)*x(4)-y(1)*z(2)*x(3)*x(4)-2*x(1)*z(2)*y(3)*x(4)+2*x(1)*y(2)*z(3)*x(4)+x(1)*x(2)*z(3)*y(4)-x(1)*x(2)*y(3)*z(4),
z(1)*y(2)*x(3)*y(4)-y(1)*z(2)*x(3)*y(4)-x(1)*z(2)*y(3)*y(4)+x(1)*y(2)*z(3)*y(4)-y(1)*z(2)*y(3)*x(4)+y(1)*y(2)*z(3)*x(4)+y(1)*x(2)*z(3)*y(4)-y(1)*x(2)*y(3)*z(4),
z(1)*y(2)*x(3)*z(4)-y(1)*z(2)*x(3)*z(4)-x(1)*z(2)*y(3)*z(4)+x(1)*y(2)*z(3)*z(4)-z(1)*z(2)*y(3)*x(4)+z(1)*y(2)*z(3)*x(4)+z(1)*x(2)*z(3)*y(4)-z(1)*x(2)*y(3)*z(4),
z(1)*y(2)*x(3)*t(4)-y(1)*z(2)*x(3)*t(4)-x(1)*z(2)*y(3)*t(4)+x(1)*y(2)*z(3)*t(4)-t(1)*z(2)*y(3)*x(4)+t(1)*y(2)*z(3)*x(4)+t(1)*x(2)*z(3)*y(4)-t(1)*x(2)*y(3)*z(4),
z(1)*y(2)*y(3)*x(4)-2*y(1)*z(2)*y(3)*x(4)+y(1)*y(2)*z(3)*x(4)-x(1)*z(2)*y(3)*y(4)+2*x(1)*y(2)*z(3)*y(4)-x(1)*y(2)*y(3)*z(4),
z(1)*y(2)*y(3)*y(4)-3*y(1)*z(2)*y(3)*y(4)+3*y(1)*y(2)*z(3)*y(4)-y(1)*y(2)*y(3)*z(4),
-2*y(1)*z(2)*y(3)*z(4)+y(1)*y(2)*z(3)*z(4)-z(1)*z(2)*y(3)*y(4)+2*z(1)*y(2)*z(3)*y(4),
z(1)*y(2)*y(3)*t(4)-2*y(1)*z(2)*y(3)*t(4)+y(1)*y(2)*z(3)*t(4)-t(1)*z(2)*y(3)*y(4)+2*t(1)*y(2)*z(3)*y(4)-t(1)*y(2)*y(3)*z(4),
2*z(1)*y(2)*z(3)*x(4)-y(1)*z(2)*z(3)*x(4)-z(1)*z(2)*y(3)*x(4)-2*x(1)*z(2)*y(3)*z(4)+x(1)*y(2)*z(3)*z(4)+x(1)*z(2)*z(3)*y(4),
-2*y(1)*z(2)*y(3)*z(4)+y(1)*y(2)*z(3)*z(4)-z(1)*z(2)*y(3)*y(4)+2*z(1)*y(2)*z(3)*y(4),
3*z(1)*y(2)*z(3)*z(4)-y(1)*z(2)*z(3)*z(4)-3*z(1)*z(2)*y(3)*z(4)+z(1)*z(2)*z(3)*y(4),
2*z(1)*y(2)*z(3)*t(4)-y(1)*z(2)*z(3)*t(4)-z(1)*z(2)*y(3)*t(4)-2*t(1)*z(2)*y(3)*z(4)+t(1)*y(2)*z(3)*z(4)+t(1)*z(2)*z(3)*y(4),
z(1)*y(2)*t(3)*x(4)-y(1)*z(2)*t(3)*x(4)-t(1)*z(2)*y(3)*x(4)+t(1)*y(2)*z(3)*x(4)-x(1)*z(2)*y(3)*t(4)+x(1)*y(2)*z(3)*t(4)+x(1)*t(2)*z(3)*y(4)-x(1)*t(2)*y(3)*z(4),
z(1)*y(2)*t(3)*y(4)-y(1)*z(2)*t(3)*y(4)-t(1)*z(2)*y(3)*y(4)+t(1)*y(2)*z(3)*y(4)-y(1)*z(2)*y(3)*t(4)+y(1)*y(2)*z(3)*t(4)+y(1)*t(2)*z(3)*y(4)-y(1)*t(2)*y(3)*z(4),
z(1)*y(2)*t(3)*z(4)-y(1)*z(2)*t(3)*z(4)-t(1)*z(2)*y(3)*z(4)+t(1)*y(2)*z(3)*z(4)-z(1)*z(2)*y(3)*t(4)+z(1)*y(2)*z(3)*t(4)+z(1)*t(2)*z(3)*y(4)-z(1)*t(2)*y(3)*z(4),
z(1)*y(2)*t(3)*t(4)-y(1)*z(2)*t(3)*t(4)-2*t(1)*z(2)*y(3)*t(4)+2*t(1)*y(2)*z(3)*t(4)+t(1)*t(2)*z(3)*y(4)-t(1)*t(2)*y(3)*z(4),
z(1)*t(2)*x(3)*x(4)-t(1)*z(2)*x(3)*x(4)-2*x(1)*z(2)*t(3)*x(4)+2*x(1)*t(2)*z(3)*x(4)+x(1)*x(2)*z(3)*t(4)-x(1)*x(2)*t(3)*z(4),
z(1)*t(2)*x(3)*y(4)-t(1)*z(2)*x(3)*y(4)-x(1)*z(2)*t(3)*y(4)+x(1)*t(2)*z(3)*y(4)-y(1)*z(2)*t(3)*x(4)+y(1)*t(2)*z(3)*x(4)+y(1)*x(2)*z(3)*t(4)-y(1)*x(2)*t(3)*z(4),
z(1)*t(2)*x(3)*z(4)-t(1)*z(2)*x(3)*z(4)-x(1)*z(2)*t(3)*z(4)+x(1)*t(2)*z(3)*z(4)-z(1)*z(2)*t(3)*x(4)+z(1)*t(2)*z(3)*x(4)+z(1)*x(2)*z(3)*t(4)-z(1)*x(2)*t(3)*z(4),
z(1)*t(2)*x(3)*t(4)-t(1)*z(2)*x(3)*t(4)-x(1)*z(2)*t(3)*t(4)+x(1)*t(2)*z(3)*t(4)-t(1)*z(2)*t(3)*x(4)+t(1)*t(2)*z(3)*x(4)+t(1)*x(2)*z(3)*t(4)-t(1)*x(2)*t(3)*z(4),
z(1)*t(2)*y(3)*x(4)-t(1)*z(2)*y(3)*x(4)-y(1)*z(2)*t(3)*x(4)+y(1)*t(2)*z(3)*x(4)-x(1)*z(2)*t(3)*y(4)+x(1)*t(2)*z(3)*y(4)+x(1)*y(2)*z(3)*t(4)-x(1)*y(2)*t(3)*z(4),
z(1)*t(2)*y(3)*y(4)-t(1)*z(2)*y(3)*y(4)-2*y(1)*z(2)*t(3)*y(4)+2*y(1)*t(2)*z(3)*y(4)+y(1)*y(2)*z(3)*t(4)-y(1)*y(2)*t(3)*z(4),
z(1)*t(2)*y(3)*z(4)-t(1)*z(2)*y(3)*z(4)-y(1)*z(2)*t(3)*z(4)+y(1)*t(2)*z(3)*z(4)-z(1)*z(2)*t(3)*y(4)+z(1)*t(2)*z(3)*y(4)+z(1)*y(2)*z(3)*t(4)-z(1)*y(2)*t(3)*z(4),
z(1)*t(2)*y(3)*t(4)-t(1)*z(2)*y(3)*t(4)-y(1)*z(2)*t(3)*t(4)+y(1)*t(2)*z(3)*t(4)-t(1)*z(2)*t(3)*y(4)+t(1)*t(2)*z(3)*y(4)+t(1)*y(2)*z(3)*t(4)-t(1)*y(2)*t(3)*z(4),
2*z(1)*t(2)*z(3)*x(4)-t(1)*z(2)*z(3)*x(4)-z(1)*z(2)*t(3)*x(4)-2*x(1)*z(2)*t(3)*z(4)+x(1)*t(2)*z(3)*z(4)+x(1)*z(2)*z(3)*t(4),
2*z(1)*t(2)*z(3)*y(4)-t(1)*z(2)*z(3)*y(4)-z(1)*z(2)*t(3)*y(4)-2*y(1)*z(2)*t(3)*z(4)+y(1)*t(2)*z(3)*z(4)+y(1)*z(2)*z(3)*t(4),
3*z(1)*t(2)*z(3)*z(4)-t(1)*z(2)*z(3)*z(4)-3*z(1)*z(2)*t(3)*z(4)+z(1)*z(2)*z(3)*t(4),
2*z(1)*t(2)*z(3)*t(4)-z(1)*z(2)*t(3)*t(4)-2*t(1)*z(2)*t(3)*z(4)+t(1)*t(2)*z(3)*z(4),
z(1)*t(2)*t(3)*x(4)-2*t(1)*z(2)*t(3)*x(4)+t(1)*t(2)*z(3)*x(4)-x(1)*z(2)*t(3)*t(4)+2*x(1)*t(2)*z(3)*t(4)-x(1)*t(2)*t(3)*z(4),
z(1)*t(2)*t(3)*y(4)-2*t(1)*z(2)*t(3)*y(4)+t(1)*t(2)*z(3)*y(4)-y(1)*z(2)*t(3)*t(4)+2*y(1)*t(2)*z(3)*t(4)-y(1)*t(2)*t(3)*z(4),
2*z(1)*t(2)*z(3)*t(4)-z(1)*z(2)*t(3)*t(4)-2*t(1)*z(2)*t(3)*z(4)+t(1)*t(2)*z(3)*z(4),
z(1)*t(2)*t(3)*t(4)-3*t(1)*z(2)*t(3)*t(4)+3*t(1)*t(2)*z(3)*t(4)-t(1)*t(2)*t(3)*z(4),
t(1)*x(2)*x(3)*x(4)-3*x(1)*t(2)*x(3)*x(4)+3*x(1)*x(2)*t(3)*x(4)-x(1)*x(2)*x(3)*t(4),
t(1)*x(2)*x(3)*y(4)-2*x(1)*t(2)*x(3)*y(4)+x(1)*x(2)*t(3)*y(4)-y(1)*t(2)*x(3)*x(4)+2*y(1)*x(2)*t(3)*x(4)-y(1)*x(2)*x(3)*t(4),
t(1)*x(2)*x(3)*z(4)-2*x(1)*t(2)*x(3)*z(4)+x(1)*x(2)*t(3)*z(4)-z(1)*t(2)*x(3)*x(4)+2*z(1)*x(2)*t(3)*x(4)-z(1)*x(2)*x(3)*t(4),
-2*x(1)*t(2)*x(3)*t(4)+x(1)*x(2)*t(3)*t(4)-t(1)*t(2)*x(3)*x(4)+2*t(1)*x(2)*t(3)*x(4),
t(1)*x(2)*y(3)*x(4)-x(1)*t(2)*y(3)*x(4)-y(1)*t(2)*x(3)*x(4)+y(1)*x(2)*t(3)*x(4)-x(1)*t(2)*x(3)*y(4)+x(1)*x(2)*t(3)*y(4)+x(1)*y(2)*t(3)*x(4)-x(1)*y(2)*x(3)*t(4),
t(1)*x(2)*y(3)*y(4)-x(1)*t(2)*y(3)*y(4)-2*y(1)*t(2)*x(3)*y(4)+2*y(1)*x(2)*t(3)*y(4)+y(1)*y(2)*t(3)*x(4)-y(1)*y(2)*x(3)*t(4),
t(1)*x(2)*y(3)*z(4)-x(1)*t(2)*y(3)*z(4)-y(1)*t(2)*x(3)*z(4)+y(1)*x(2)*t(3)*z(4)-z(1)*t(2)*x(3)*y(4)+z(1)*x(2)*t(3)*y(4)+z(1)*y(2)*t(3)*x(4)-z(1)*y(2)*x(3)*t(4),
t(1)*x(2)*y(3)*t(4)-x(1)*t(2)*y(3)*t(4)-y(1)*t(2)*x(3)*t(4)+y(1)*x(2)*t(3)*t(4)-t(1)*t(2)*x(3)*y(4)+t(1)*x(2)*t(3)*y(4)+t(1)*y(2)*t(3)*x(4)-t(1)*y(2)*x(3)*t(4),
t(1)*x(2)*z(3)*x(4)-x(1)*t(2)*z(3)*x(4)-z(1)*t(2)*x(3)*x(4)+z(1)*x(2)*t(3)*x(4)-x(1)*t(2)*x(3)*z(4)+x(1)*x(2)*t(3)*z(4)+x(1)*z(2)*t(3)*x(4)-x(1)*z(2)*x(3)*t(4),
t(1)*x(2)*z(3)*y(4)-x(1)*t(2)*z(3)*y(4)-z(1)*t(2)*x(3)*y(4)+z(1)*x(2)*t(3)*y(4)-y(1)*t(2)*x(3)*z(4)+y(1)*x(2)*t(3)*z(4)+y(1)*z(2)*t(3)*x(4)-y(1)*z(2)*x(3)*t(4),
t(1)*x(2)*z(3)*z(4)-x(1)*t(2)*z(3)*z(4)-2*z(1)*t(2)*x(3)*z(4)+2*z(1)*x(2)*t(3)*z(4)+z(1)*z(2)*t(3)*x(4)-z(1)*z(2)*x(3)*t(4),
t(1)*x(2)*z(3)*t(4)-x(1)*t(2)*z(3)*t(4)-z(1)*t(2)*x(3)*t(4)+z(1)*x(2)*t(3)*t(4)-t(1)*t(2)*x(3)*z(4)+t(1)*x(2)*t(3)*z(4)+t(1)*z(2)*t(3)*x(4)-t(1)*z(2)*x(3)*t(4),
-2*x(1)*t(2)*x(3)*t(4)+x(1)*x(2)*t(3)*t(4)-t(1)*t(2)*x(3)*x(4)+2*t(1)*x(2)*t(3)*x(4),
2*t(1)*x(2)*t(3)*y(4)-x(1)*t(2)*t(3)*y(4)-t(1)*t(2)*x(3)*y(4)-2*y(1)*t(2)*x(3)*t(4)+y(1)*x(2)*t(3)*t(4)+y(1)*t(2)*t(3)*x(4),
2*t(1)*x(2)*t(3)*z(4)-x(1)*t(2)*t(3)*z(4)-t(1)*t(2)*x(3)*z(4)-2*z(1)*t(2)*x(3)*t(4)+z(1)*x(2)*t(3)*t(4)+z(1)*t(2)*t(3)*x(4),
3*t(1)*x(2)*t(3)*t(4)-x(1)*t(2)*t(3)*t(4)-3*t(1)*t(2)*x(3)*t(4)+t(1)*t(2)*t(3)*x(4),
t(1)*y(2)*x(3)*x(4)-y(1)*t(2)*x(3)*x(4)-2*x(1)*t(2)*y(3)*x(4)+2*x(1)*y(2)*t(3)*x(4)+x(1)*x(2)*t(3)*y(4)-x(1)*x(2)*y(3)*t(4),
t(1)*y(2)*x(3)*y(4)-y(1)*t(2)*x(3)*y(4)-x(1)*t(2)*y(3)*y(4)+x(1)*y(2)*t(3)*y(4)-y(1)*t(2)*y(3)*x(4)+y(1)*y(2)*t(3)*x(4)+y(1)*x(2)*t(3)*y(4)-y(1)*x(2)*y(3)*t(4),
t(1)*y(2)*x(3)*z(4)-y(1)*t(2)*x(3)*z(4)-x(1)*t(2)*y(3)*z(4)+x(1)*y(2)*t(3)*z(4)-z(1)*t(2)*y(3)*x(4)+z(1)*y(2)*t(3)*x(4)+z(1)*x(2)*t(3)*y(4)-z(1)*x(2)*y(3)*t(4),
t(1)*y(2)*x(3)*t(4)-y(1)*t(2)*x(3)*t(4)-x(1)*t(2)*y(3)*t(4)+x(1)*y(2)*t(3)*t(4)-t(1)*t(2)*y(3)*x(4)+t(1)*y(2)*t(3)*x(4)+t(1)*x(2)*t(3)*y(4)-t(1)*x(2)*y(3)*t(4),
t(1)*y(2)*y(3)*x(4)-2*y(1)*t(2)*y(3)*x(4)+y(1)*y(2)*t(3)*x(4)-x(1)*t(2)*y(3)*y(4)+2*x(1)*y(2)*t(3)*y(4)-x(1)*y(2)*y(3)*t(4),
t(1)*y(2)*y(3)*y(4)-3*y(1)*t(2)*y(3)*y(4)+3*y(1)*y(2)*t(3)*y(4)-y(1)*y(2)*y(3)*t(4),
t(1)*y(2)*y(3)*z(4)-2*y(1)*t(2)*y(3)*z(4)+y(1)*y(2)*t(3)*z(4)-z(1)*t(2)*y(3)*y(4)+2*z(1)*y(2)*t(3)*y(4)-z(1)*y(2)*y(3)*t(4),
-2*y(1)*t(2)*y(3)*t(4)+y(1)*y(2)*t(3)*t(4)-t(1)*t(2)*y(3)*y(4)+2*t(1)*y(2)*t(3)*y(4),
t(1)*y(2)*z(3)*x(4)-y(1)*t(2)*z(3)*x(4)-z(1)*t(2)*y(3)*x(4)+z(1)*y(2)*t(3)*x(4)-x(1)*t(2)*y(3)*z(4)+x(1)*y(2)*t(3)*z(4)+x(1)*z(2)*t(3)*y(4)-x(1)*z(2)*y(3)*t(4),
t(1)*y(2)*z(3)*y(4)-y(1)*t(2)*z(3)*y(4)-z(1)*t(2)*y(3)*y(4)+z(1)*y(2)*t(3)*y(4)-y(1)*t(2)*y(3)*z(4)+y(1)*y(2)*t(3)*z(4)+y(1)*z(2)*t(3)*y(4)-y(1)*z(2)*y(3)*t(4),
t(1)*y(2)*z(3)*z(4)-y(1)*t(2)*z(3)*z(4)-2*z(1)*t(2)*y(3)*z(4)+2*z(1)*y(2)*t(3)*z(4)+z(1)*z(2)*t(3)*y(4)-z(1)*z(2)*y(3)*t(4),
t(1)*y(2)*z(3)*t(4)-y(1)*t(2)*z(3)*t(4)-z(1)*t(2)*y(3)*t(4)+z(1)*y(2)*t(3)*t(4)-t(1)*t(2)*y(3)*z(4)+t(1)*y(2)*t(3)*z(4)+t(1)*z(2)*t(3)*y(4)-t(1)*z(2)*y(3)*t(4),
2*t(1)*y(2)*t(3)*x(4)-y(1)*t(2)*t(3)*x(4)-t(1)*t(2)*y(3)*x(4)-2*x(1)*t(2)*y(3)*t(4)+x(1)*y(2)*t(3)*t(4)+x(1)*t(2)*t(3)*y(4),
-2*y(1)*t(2)*y(3)*t(4)+y(1)*y(2)*t(3)*t(4)-t(1)*t(2)*y(3)*y(4)+2*t(1)*y(2)*t(3)*y(4),
2*t(1)*y(2)*t(3)*z(4)-y(1)*t(2)*t(3)*z(4)-t(1)*t(2)*y(3)*z(4)-2*z(1)*t(2)*y(3)*t(4)+z(1)*y(2)*t(3)*t(4)+z(1)*t(2)*t(3)*y(4),
3*t(1)*y(2)*t(3)*t(4)-y(1)*t(2)*t(3)*t(4)-3*t(1)*t(2)*y(3)*t(4)+t(1)*t(2)*t(3)*y(4),
t(1)*z(2)*x(3)*x(4)-z(1)*t(2)*x(3)*x(4)-2*x(1)*t(2)*z(3)*x(4)+2*x(1)*z(2)*t(3)*x(4)+x(1)*x(2)*t(3)*z(4)-x(1)*x(2)*z(3)*t(4),
t(1)*z(2)*x(3)*y(4)-z(1)*t(2)*x(3)*y(4)-x(1)*t(2)*z(3)*y(4)+x(1)*z(2)*t(3)*y(4)-y(1)*t(2)*z(3)*x(4)+y(1)*z(2)*t(3)*x(4)+y(1)*x(2)*t(3)*z(4)-y(1)*x(2)*z(3)*t(4),
t(1)*z(2)*x(3)*z(4)-z(1)*t(2)*x(3)*z(4)-x(1)*t(2)*z(3)*z(4)+x(1)*z(2)*t(3)*z(4)-z(1)*t(2)*z(3)*x(4)+z(1)*z(2)*t(3)*x(4)+z(1)*x(2)*t(3)*z(4)-z(1)*x(2)*z(3)*t(4),
t(1)*z(2)*x(3)*t(4)-z(1)*t(2)*x(3)*t(4)-x(1)*t(2)*z(3)*t(4)+x(1)*z(2)*t(3)*t(4)-t(1)*t(2)*z(3)*x(4)+t(1)*z(2)*t(3)*x(4)+t(1)*x(2)*t(3)*z(4)-t(1)*x(2)*z(3)*t(4),
t(1)*z(2)*y(3)*x(4)-z(1)*t(2)*y(3)*x(4)-y(1)*t(2)*z(3)*x(4)+y(1)*z(2)*t(3)*x(4)-x(1)*t(2)*z(3)*y(4)+x(1)*z(2)*t(3)*y(4)+x(1)*y(2)*t(3)*z(4)-x(1)*y(2)*z(3)*t(4),
t(1)*z(2)*y(3)*y(4)-z(1)*t(2)*y(3)*y(4)-2*y(1)*t(2)*z(3)*y(4)+2*y(1)*z(2)*t(3)*y(4)+y(1)*y(2)*t(3)*z(4)-y(1)*y(2)*z(3)*t(4),
t(1)*z(2)*y(3)*z(4)-z(1)*t(2)*y(3)*z(4)-y(1)*t(2)*z(3)*z(4)+y(1)*z(2)*t(3)*z(4)-z(1)*t(2)*z(3)*y(4)+z(1)*z(2)*t(3)*y(4)+z(1)*y(2)*t(3)*z(4)-z(1)*y(2)*z(3)*t(4),
t(1)*z(2)*y(3)*t(4)-z(1)*t(2)*y(3)*t(4)-y(1)*t(2)*z(3)*t(4)+y(1)*z(2)*t(3)*t(4)-t(1)*t(2)*z(3)*y(4)+t(1)*z(2)*t(3)*y(4)+t(1)*y(2)*t(3)*z(4)-t(1)*y(2)*z(3)*t(4),
t(1)*z(2)*z(3)*x(4)-2*z(1)*t(2)*z(3)*x(4)+z(1)*z(2)*t(3)*x(4)-x(1)*t(2)*z(3)*z(4)+2*x(1)*z(2)*t(3)*z(4)-x(1)*z(2)*z(3)*t(4),
t(1)*z(2)*z(3)*y(4)-2*z(1)*t(2)*z(3)*y(4)+z(1)*z(2)*t(3)*y(4)-y(1)*t(2)*z(3)*z(4)+2*y(1)*z(2)*t(3)*z(4)-y(1)*z(2)*z(3)*t(4),
t(1)*z(2)*z(3)*z(4)-3*z(1)*t(2)*z(3)*z(4)+3*z(1)*z(2)*t(3)*z(4)-z(1)*z(2)*z(3)*t(4),
-2*z(1)*t(2)*z(3)*t(4)+z(1)*z(2)*t(3)*t(4)-t(1)*t(2)*z(3)*z(4)+2*t(1)*z(2)*t(3)*z(4),
2*t(1)*z(2)*t(3)*x(4)-z(1)*t(2)*t(3)*x(4)-t(1)*t(2)*z(3)*x(4)-2*x(1)*t(2)*z(3)*t(4)+x(1)*z(2)*t(3)*t(4)+x(1)*t(2)*t(3)*z(4),
2*t(1)*z(2)*t(3)*y(4)-z(1)*t(2)*t(3)*y(4)-t(1)*t(2)*z(3)*y(4)-2*y(1)*t(2)*z(3)*t(4)+y(1)*z(2)*t(3)*t(4)+y(1)*t(2)*t(3)*z(4),
-2*z(1)*t(2)*z(3)*t(4)+z(1)*z(2)*t(3)*t(4)-t(1)*t(2)*z(3)*z(4)+2*t(1)*z(2)*t(3)*z(4),
3*t(1)*z(2)*t(3)*t(4)-z(1)*t(2)*t(3)*t(4)-3*t(1)*t(2)*z(3)*t(4)+t(1)*t(2)*t(3)*z(4);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print("=====Solution Begin=====");
print (J, "%s");
print("=====Solution End=====");$;