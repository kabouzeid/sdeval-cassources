LIB "freegb.lib";
ring r = 0,(x1,x2,x3,x4,x5,x6),dp;
int d = 10;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = x6(1)*x5(2)*x6(3)-x6(1)*x6(2)*x5(3),
x6(1)*x4(2)*x6(3)-x6(1)*x6(2)*x4(3),
x6(1)*x3(2)*x6(3)-x6(1)*x6(2)*x3(3),
x6(1)*x2(2)*x6(3)-x6(1)*x6(2)*x2(3),
x6(1)*x1(2)*x6(3)-x6(1)*x6(2)*x1(3),
x5(1)*x6(2)*x5(3)-x5(1)*x5(2)*x6(3),
x6(1)*x4(2)*x5(3)+x4(1)*x6(2)*x5(3)-x4(1)*x5(2)*x6(3)-x5(1)*x6(2)*x4(3),
x6(1)*x3(2)*x5(3)+x3(1)*x6(2)*x5(3)-x3(1)*x5(2)*x6(3)-x5(1)*x6(2)*x3(3),
x6(1)*x2(2)*x5(3)+x2(1)*x6(2)*x5(3)-x2(1)*x5(2)*x6(3)-x5(1)*x6(2)*x2(3),
x6(1)*x1(2)*x5(3)+x1(1)*x6(2)*x5(3)-x1(1)*x5(2)*x6(3)-x5(1)*x6(2)*x1(3),
x5(1)*x6(2)*x4(3)+x6(1)*x5(2)*x4(3)-x5(1)*x4(2)*x6(3)-x6(1)*x4(2)*x5(3),
x4(1)*x6(2)*x4(3)-x4(1)*x4(2)*x6(3),
x6(1)*x3(2)*x4(3)+x3(1)*x6(2)*x4(3)-x3(1)*x4(2)*x6(3)-x4(1)*x6(2)*x3(3),
x6(1)*x2(2)*x4(3)+x2(1)*x6(2)*x4(3)-x2(1)*x4(2)*x6(3)-x4(1)*x6(2)*x2(3),
x6(1)*x1(2)*x4(3)+x1(1)*x6(2)*x4(3)-x1(1)*x4(2)*x6(3)-x4(1)*x6(2)*x1(3),
x5(1)*x6(2)*x3(3)+x6(1)*x5(2)*x3(3)-x5(1)*x3(2)*x6(3)-x6(1)*x3(2)*x5(3),
x4(1)*x6(2)*x3(3)+x6(1)*x4(2)*x3(3)-x4(1)*x3(2)*x6(3)-x6(1)*x3(2)*x4(3),
x3(1)*x6(2)*x3(3)-x3(1)*x3(2)*x6(3),
x6(1)*x2(2)*x3(3)+x2(1)*x6(2)*x3(3)-x2(1)*x3(2)*x6(3)-x3(1)*x6(2)*x2(3),
x6(1)*x1(2)*x3(3)+x1(1)*x6(2)*x3(3)-x1(1)*x3(2)*x6(3)-x3(1)*x6(2)*x1(3),
x5(1)*x6(2)*x2(3)+x6(1)*x5(2)*x2(3)-x5(1)*x2(2)*x6(3)-x6(1)*x2(2)*x5(3),
x4(1)*x6(2)*x2(3)+x6(1)*x4(2)*x2(3)-x4(1)*x2(2)*x6(3)-x6(1)*x2(2)*x4(3),
x3(1)*x6(2)*x2(3)+x6(1)*x3(2)*x2(3)-x3(1)*x2(2)*x6(3)-x6(1)*x2(2)*x3(3),
x2(1)*x6(2)*x2(3)-x2(1)*x2(2)*x6(3),
x6(1)*x1(2)*x2(3)+x1(1)*x6(2)*x2(3)-x1(1)*x2(2)*x6(3)-x2(1)*x6(2)*x1(3),
x5(1)*x6(2)*x1(3)+x6(1)*x5(2)*x1(3)-x5(1)*x1(2)*x6(3)-x6(1)*x1(2)*x5(3),
x4(1)*x6(2)*x1(3)+x6(1)*x4(2)*x1(3)-x4(1)*x1(2)*x6(3)-x6(1)*x1(2)*x4(3),
x3(1)*x6(2)*x1(3)+x6(1)*x3(2)*x1(3)-x3(1)*x1(2)*x6(3)-x6(1)*x1(2)*x3(3),
x2(1)*x6(2)*x1(3)+x6(1)*x2(2)*x1(3)-x2(1)*x1(2)*x6(3)-x6(1)*x1(2)*x2(3),
x1(1)*x6(2)*x1(3)-x1(1)*x1(2)*x6(3),
x5(1)*x4(2)*x5(3)-x5(1)*x5(2)*x4(3),
x5(1)*x3(2)*x5(3)-x5(1)*x5(2)*x3(3),
x5(1)*x2(2)*x5(3)-x5(1)*x5(2)*x2(3),
x5(1)*x1(2)*x5(3)-x5(1)*x5(2)*x1(3),
x4(1)*x5(2)*x4(3)-x4(1)*x4(2)*x5(3),
x5(1)*x3(2)*x4(3)+x3(1)*x5(2)*x4(3)-x3(1)*x4(2)*x5(3)-x4(1)*x5(2)*x3(3),
x5(1)*x2(2)*x4(3)+x2(1)*x5(2)*x4(3)-x2(1)*x4(2)*x5(3)-x4(1)*x5(2)*x2(3),
x5(1)*x1(2)*x4(3)+x1(1)*x5(2)*x4(3)-x1(1)*x4(2)*x5(3)-x4(1)*x5(2)*x1(3),
x4(1)*x5(2)*x3(3)+x5(1)*x4(2)*x3(3)-x4(1)*x3(2)*x5(3)-x5(1)*x3(2)*x4(3),
x3(1)*x5(2)*x3(3)-x3(1)*x3(2)*x5(3),
x5(1)*x2(2)*x3(3)+x2(1)*x5(2)*x3(3)-x2(1)*x3(2)*x5(3)-x3(1)*x5(2)*x2(3),
x5(1)*x1(2)*x3(3)+x1(1)*x5(2)*x3(3)-x1(1)*x3(2)*x5(3)-x3(1)*x5(2)*x1(3),
x4(1)*x5(2)*x2(3)+x5(1)*x4(2)*x2(3)-x4(1)*x2(2)*x5(3)-x5(1)*x2(2)*x4(3),
x3(1)*x5(2)*x2(3)+x5(1)*x3(2)*x2(3)-x3(1)*x2(2)*x5(3)-x5(1)*x2(2)*x3(3),
x2(1)*x5(2)*x2(3)-x2(1)*x2(2)*x5(3),
x5(1)*x1(2)*x2(3)+x1(1)*x5(2)*x2(3)-x1(1)*x2(2)*x5(3)-x2(1)*x5(2)*x1(3),
x4(1)*x5(2)*x1(3)+x5(1)*x4(2)*x1(3)-x4(1)*x1(2)*x5(3)-x5(1)*x1(2)*x4(3),
x3(1)*x5(2)*x1(3)+x5(1)*x3(2)*x1(3)-x3(1)*x1(2)*x5(3)-x5(1)*x1(2)*x3(3),
x2(1)*x5(2)*x1(3)+x5(1)*x2(2)*x1(3)-x2(1)*x1(2)*x5(3)-x5(1)*x1(2)*x2(3),
x1(1)*x5(2)*x1(3)-x1(1)*x1(2)*x5(3),
x4(1)*x3(2)*x4(3)-x4(1)*x4(2)*x3(3),
x4(1)*x2(2)*x4(3)-x4(1)*x4(2)*x2(3),
x4(1)*x1(2)*x4(3)-x4(1)*x4(2)*x1(3),
x3(1)*x4(2)*x3(3)-x3(1)*x3(2)*x4(3),
x4(1)*x2(2)*x3(3)+x2(1)*x4(2)*x3(3)-x2(1)*x3(2)*x4(3)-x3(1)*x4(2)*x2(3),
x4(1)*x1(2)*x3(3)+x1(1)*x4(2)*x3(3)-x1(1)*x3(2)*x4(3)-x3(1)*x4(2)*x1(3),
x3(1)*x4(2)*x2(3)+x4(1)*x3(2)*x2(3)-x3(1)*x2(2)*x4(3)-x4(1)*x2(2)*x3(3),
x2(1)*x4(2)*x2(3)-x2(1)*x2(2)*x4(3),
x4(1)*x1(2)*x2(3)+x1(1)*x4(2)*x2(3)-x1(1)*x2(2)*x4(3)-x2(1)*x4(2)*x1(3),
x3(1)*x4(2)*x1(3)+x4(1)*x3(2)*x1(3)-x3(1)*x1(2)*x4(3)-x4(1)*x1(2)*x3(3),
x2(1)*x4(2)*x1(3)+x4(1)*x2(2)*x1(3)-x2(1)*x1(2)*x4(3)-x4(1)*x1(2)*x2(3),
x1(1)*x4(2)*x1(3)-x1(1)*x1(2)*x4(3),
x3(1)*x2(2)*x3(3)-x3(1)*x3(2)*x2(3),
x3(1)*x1(2)*x3(3)-x3(1)*x3(2)*x1(3),
x2(1)*x3(2)*x2(3)-x2(1)*x2(2)*x3(3),
x3(1)*x1(2)*x2(3)+x1(1)*x3(2)*x2(3)-x1(1)*x2(2)*x3(3)-x2(1)*x3(2)*x1(3),
x2(1)*x3(2)*x1(3)+x3(1)*x2(2)*x1(3)-x2(1)*x1(2)*x3(3)-x3(1)*x1(2)*x2(3),
x1(1)*x3(2)*x1(3)-x1(1)*x1(2)*x3(3),
x2(1)*x1(2)*x2(3)-x2(1)*x2(2)*x1(3),
x1(1)*x2(2)*x1(3)-x1(1)*x1(2)*x2(3),
-x1(1)*x4(2)*x5(3)*x2(4)*x3(5)*x6(6)+x1(1)*x4(2)*x5(3)*x3(4)*x2(5)*x6(6)-x2(1)*x5(2)*x3(3)*x1(4)*x4(5)*x6(6)-x2(1)*x5(2)*x1(3)*x3(4)*x4(5)*x6(6)+x2(1)*x5(2)*x4(3)*x1(4)*x3(5)*x6(6)+x2(1)*x4(2)*x1(3)*x3(4)*x5(5)*x6(6)+x2(1)*x1(2)*x5(3)*x3(4)*x4(5)*x6(6)-x2(1)*x1(2)*x5(3)*x4(4)*x3(5)*x6(6)+3*x2(1)*x1(2)*x4(3)*x3(4)*x5(5)*x6(6)-x2(1)*x1(2)*x4(3)*x3(4)*x5(5)*x6(6)-3*x2(1)*x4(2)*x1(3)*x3(4)*x5(5)*x6(6)+x2(1)*x5(2)*x1(3)*x4(4)*x3(5)*x6(6)-3*x1(1)*x2(2)*x4(3)*x3(4)*x5(5)*x6(6)+x1(1)*x2(2)*x4(3)*x3(4)*x5(5)*x6(6)+x3(1)*x1(2)*x2(3)*x4(4)*x5(5)*x6(6)+3*x3(1)*x1(2)*x2(3)*x5(4)*x4(5)*x6(6)-x3(1)*x1(2)*x2(3)*x5(4)*x4(5)*x6(6)-x1(1)*x2(2)*x5(3)*x3(4)*x4(5)*x6(6)+x1(1)*x2(2)*x5(3)*x4(4)*x3(5)*x6(6)-3*x3(1)*x1(2)*x2(3)*x4(4)*x5(5)*x6(6)+3*x3(1)*x1(2)*x2(3)*x4(4)*x5(5)*x6(6)-x3(1)*x1(2)*x2(3)*x4(4)*x5(5)*x6(6)-3*x3(1)*x1(2)*x2(3)*x5(4)*x4(5)*x6(6)+x3(1)*x1(2)*x2(3)*x5(4)*x4(5)*x6(6)-3*x3(1)*x1(2)*x4(3)*x2(4)*x5(5)*x6(6)+x3(1)*x1(2)*x4(3)*x2(4)*x5(5)*x6(6)+3*x3(1)*x4(2)*x1(3)*x2(4)*x5(5)*x6(6)-x3(1)*x4(2)*x1(3)*x2(4)*x5(5)*x6(6)-x3(1)*x1(2)*x5(3)*x2(4)*x4(5)*x6(6)+x3(1)*x1(2)*x5(3)*x4(4)*x2(5)*x6(6)+x3(1)*x5(2)*x2(3)*x1(4)*x4(5)*x6(6)+x3(1)*x5(2)*x1(3)*x2(4)*x4(5)*x6(6)-x1(1)*x3(2)*x4(3)*x2(4)*x5(5)*x6(6)+x1(1)*x3(2)*x5(3)*x2(4)*x4(5)*x6(6)-x1(1)*x3(2)*x5(3)*x4(4)*x2(5)*x6(6)-x3(1)*x5(2)*x4(3)*x1(4)*x2(5)*x6(6)-x3(1)*x5(2)*x1(3)*x4(4)*x2(5)*x6(6)+3*x1(1)*x3(2)*x4(3)*x2(4)*x5(5)*x6(6)-3*x4(1)*x1(2)*x2(3)*x5(4)*x3(5)*x6(6)+x4(1)*x1(2)*x2(3)*x5(4)*x3(5)*x6(6)+3*x4(1)*x2(2)*x5(3)*x1(4)*x3(5)*x6(6)-x4(1)*x2(2)*x5(3)*x1(4)*x3(5)*x6(6)+3*x4(1)*x1(2)*x2(3)*x5(4)*x3(5)*x6(6)-x4(1)*x1(2)*x2(3)*x5(4)*x3(5)*x6(6)+3*x4(1)*x1(2)*x3(3)*x5(4)*x2(5)*x6(6)-x4(1)*x1(2)*x3(3)*x5(4)*x2(5)*x6(6)-3*x4(1)*x3(2)*x5(3)*x1(4)*x2(5)*x6(6)+x4(1)*x3(2)*x5(3)*x1(4)*x2(5)*x6(6)-3*x4(1)*x1(2)*x3(3)*x5(4)*x2(5)*x6(6)+x4(1)*x1(2)*x3(3)*x5(4)*x2(5)*x6(6)+x4(1)*x1(2)*x5(3)*x2(4)*x3(5)*x6(6)-x4(1)*x1(2)*x5(3)*x3(4)*x2(5)*x6(6)-x4(1)*x5(2)*x2(3)*x1(4)*x3(5)*x6(6)-x4(1)*x5(2)*x1(3)*x2(4)*x3(5)*x6(6)+x4(1)*x5(2)*x3(3)*x1(4)*x2(5)*x6(6)+x4(1)*x5(2)*x1(3)*x3(4)*x2(5)*x6(6);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print("=====Solution Begin=====");
print (J, "%s");
print("=====Solution End=====");$;