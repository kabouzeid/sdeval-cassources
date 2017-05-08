LIB "freegb.lib";
ring r = 0,(H2,H1,y6,y5,y4,y3,y2,y1,x6,x5,x4,x3,x2,x1),dp;
int d = 5;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = x2(1)*x1(2)-x1(1)*x2(2)-x3(1),
x3(1)*x1(2)-x1(1)*x3(2)-2*x4(1),
x4(1)*x1(2)-x1(1)*x4(2)-3*x5(1),
x5(1)*x1(2)-x1(1)*x5(2),
x6(1)*x1(2)-x1(1)*x6(2),
y1(1)*x1(2)-x1(1)*y1(2)+H1(1),
y2(1)*x1(2)-x1(1)*y2(2),
y3(1)*x1(2)-x1(1)*y3(2)+3*y2(1),
y4(1)*x1(2)-x1(1)*y4(2)+2*y3(1),
y5(1)*x1(2)-x1(1)*y5(2)+y4(1),
y6(1)*x1(2)-x1(1)*y6(2),
H1(1)*x1(2)-x1(1)*H1(2)-2*x1(1),
H2(1)*x1(2)-x1(1)*H2(2)+x1(1),
x3(1)*x2(2)-x2(1)*x3(2),
x4(1)*x2(2)-x2(1)*x4(2),
x5(1)*x2(2)-x2(1)*x5(2)-x6(1),
x6(1)*x2(2)-x2(1)*x6(2),
y1(1)*x2(2)-x2(1)*y1(2),
y2(1)*x2(2)-x2(1)*y2(2)+H2(1),
y3(1)*x2(2)-x2(1)*y3(2)-y1(1),
y4(1)*x2(2)-x2(1)*y4(2),
y5(1)*x2(2)-x2(1)*y5(2),
y6(1)*x2(2)-x2(1)*y6(2)+y5(1),
H1(1)*x2(2)-x2(1)*H1(2)+3*x2(1),
H2(1)*x2(2)-x2(1)*H2(2)-2*x2(1),
x4(1)*x3(2)-x3(1)*x4(2)+3*x6(1),
x5(1)*x3(2)-x3(1)*x5(2),
x6(1)*x3(2)-x3(1)*x6(2),
y1(1)*x3(2)-x3(1)*y1(2)+3*x2(1),
y2(1)*x3(2)-x3(1)*y2(2)-x1(1),
y3(1)*x3(2)-x3(1)*y3(2)+H1(1)+3*H2(1),
y4(1)*x3(2)-x3(1)*y4(2)-2*y1(1),
y5(1)*x3(2)-x3(1)*y5(2),
y6(1)*x3(2)-x3(1)*y6(2)-y4(1),
H1(1)*x3(2)-x3(1)*H1(2)+x3(1),
H2(1)*x3(2)-x3(1)*H2(2)-x3(1),
x5(1)*x4(2)-x4(1)*x5(2),
x6(1)*x4(2)-x4(1)*x6(2),
y1(1)*x4(2)-x4(1)*y1(2)+2*x3(1),
y2(1)*x4(2)-x4(1)*y2(2),
y3(1)*x4(2)-x4(1)*y3(2)-2*x1(1),
y4(1)*x4(2)-x4(1)*y4(2)+2*H1(1)+3*H2(1),
y5(1)*x4(2)-x4(1)*y5(2)-y1(1),
y6(1)*x4(2)-x4(1)*y6(2)+y3(1),
H1(1)*x4(2)-x4(1)*H1(2)-x4(1),
H2(1)*x4(2)-x4(1)*H2(2),
x6(1)*x5(2)-x5(1)*x6(2),
y1(1)*x5(2)-x5(1)*y1(2)+x4(1),
y2(1)*x5(2)-x5(1)*y2(2),
y3(1)*x5(2)-x5(1)*y3(2),
y4(1)*x5(2)-x5(1)*y4(2)-x1(1),
y5(1)*x5(2)-x5(1)*y5(2)+H1(1)+H2(1),
y6(1)*x5(2)-x5(1)*y6(2)-y2(1),
H1(1)*x5(2)-x5(1)*H1(2)-3*x5(1),
H2(1)*x5(2)-x5(1)*H2(2)+x5(1),
y1(1)*x6(2)-x6(1)*y1(2),
y2(1)*x6(2)-x6(1)*y2(2)+x5(1),
y3(1)*x6(2)-x6(1)*y3(2)-x4(1),
y4(1)*x6(2)-x6(1)*y4(2)+x3(1),
y5(1)*x6(2)-x6(1)*y5(2)-x2(1),
y6(1)*x6(2)-x6(1)*y6(2)+H1(1)+2*H2(1),
H1(1)*x6(2)-x6(1)*H1(2),
H2(1)*x6(2)-x6(1)*H2(2)-x6(1),
y2(1)*y1(2)-y1(1)*y2(2)+y3(1),
y3(1)*y1(2)-y1(1)*y3(2)+2*y4(1),
y4(1)*y1(2)-y1(1)*y4(2)+3*y5(1),
y5(1)*y1(2)-y1(1)*y5(2),
y6(1)*y1(2)-y1(1)*y6(2),
H1(1)*y1(2)-y1(1)*H1(2)+2*y1(1),
H2(1)*y1(2)-y1(1)*H2(2)-y1(1),
y3(1)*y2(2)-y2(1)*y3(2),
y4(1)*y2(2)-y2(1)*y4(2),
y5(1)*y2(2)-y2(1)*y5(2)+y6(1),
y6(1)*y2(2)-y2(1)*y6(2),
H1(1)*y2(2)-y2(1)*H1(2)-3*y2(1),
H2(1)*y2(2)-y2(1)*H2(2)+2*y2(1),
y4(1)*y3(2)-y3(1)*y4(2)-3*y6(1),
y5(1)*y3(2)-y3(1)*y5(2),
y6(1)*y3(2)-y3(1)*y6(2),
H1(1)*y3(2)-y3(1)*H1(2)-y3(1),
H2(1)*y3(2)-y3(1)*H2(2)+y3(1),
y5(1)*y4(2)-y4(1)*y5(2),
y6(1)*y4(2)-y4(1)*y6(2),
H1(1)*y4(2)-y4(1)*H1(2)+y4(1),
H2(1)*y4(2)-y4(1)*H2(2),
y6(1)*y5(2)-y5(1)*y6(2),
H1(1)*y5(2)-y5(1)*H1(2)+3*y5(1),
H2(1)*y5(2)-y5(1)*H2(2)-y5(1),
H1(1)*y6(2)-y6(1)*H1(2),
H2(1)*y6(2)-y6(1)*H2(2)+y6(1),
H2(1)*H1(2)-H1(1)*H2(2),
x1(1)*x2(2)*x3(3);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print("=====Solution Begin=====");
print (J, "%s");
print("=====Solution End=====");$;