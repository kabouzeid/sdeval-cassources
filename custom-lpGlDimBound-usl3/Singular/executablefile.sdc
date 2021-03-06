LIB "fpadim.lib";
ring r = 0,(H2,H1,y3,y2,y1,x3,x2,x1),dp;
int d = 4;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = x2(1)*x1(2)-x1(1)*x2(2)-x3(1),
x3(1)*x1(2)-x1(1)*x3(2),
y1(1)*x1(2)-x1(1)*y1(2)+H1(1),
y2(1)*x1(2)-x1(1)*y2(2),
y3(1)*x1(2)-x1(1)*y3(2)+y2(1),
H1(1)*x1(2)-x1(1)*H1(2)-2*x1(1),
H2(1)*x1(2)-x1(1)*H2(2)+x1(1),
x3(1)*x2(2)-x2(1)*x3(2),
y1(1)*x2(2)-x2(1)*y1(2),
y2(1)*x2(2)-x2(1)*y2(2)+H2(1),
y3(1)*x2(2)-x2(1)*y3(2)-y1(1),
H1(1)*x2(2)-x2(1)*H1(2)+x2(1),
H2(1)*x2(2)-x2(1)*H2(2)-2*x2(1),
y1(1)*x3(2)-x3(1)*y1(2)+x2(1),
y2(1)*x3(2)-x3(1)*y2(2)-x1(1),
y3(1)*x3(2)-x3(1)*y3(2)+H1(1)+H2(1),
H1(1)*x3(2)-x3(1)*H1(2)-x3(1),
H2(1)*x3(2)-x3(1)*H2(2)-x3(1),
y2(1)*y1(2)-y1(1)*y2(2)+y3(1),
y3(1)*y1(2)-y1(1)*y3(2),
H1(1)*y1(2)-y1(1)*H1(2)+2*y1(1),
H2(1)*y1(2)-y1(1)*H2(2)-y1(1),
y3(1)*y2(2)-y2(1)*y3(2),
H1(1)*y2(2)-y2(1)*H1(2)-y2(1),
H2(1)*y2(2)-y2(1)*H2(2)+2*y2(1),
H1(1)*y3(2)-y3(1)*H1(2)+y3(1),
H2(1)*y3(2)-y3(1)*H2(2)+y3(1),
H2(1)*H1(2)-H1(1)*H2(2);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
int glDim = lpGlDimBound(J);
print("=====Solution Begin=====");
print (glDim, "%s");
print("=====Solution End=====");$;
