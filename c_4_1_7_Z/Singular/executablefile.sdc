LIB "freegb.lib";
ring r = 0,(x4,x3,x2,x1),dp;
int d = 7;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = x4(1)*x4(2)-25*x4(1)*x2(2)-x1(1)*x4(2)-6*x1(1)*x3(2)-9*x1(1)*x2(2)+x1(1)*x1(2),
x4(1)*x3(2)+13*x4(1)*x2(2)+12*x4(1)*x1(2)-9*x3(1)*x4(2)+4*x3(1)*x2(2)+41*x3(1)*x1(2)-7*x1(1)*x4(2)-x1(1)*x2(2),
4*x3(1)*x3(2)-9*x3(1)*x2(2)+9*x1(1)*x4(2)+x1(1)*x1(2),
7*x4(1)*x2(2)-5*x2(1)*x2(2)-2*x1(1)*x4(2)+x1(1)*x1(2),
x4(1)*x1(2)-x2(1)*x2(2)-13*x2(1)*x1(2)-4*x1(1)*x3(2)+2*x1(1)*x2(2)-x1(1)*x1(2),
x3(1)*x4(2)+4*x2(1)*x2(2)+15*x2(1)*x1(2)+x1(1)*x2(2);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print("=====Solution Begin=====");
print (J, "%s");
print("=====Solution End=====");$;