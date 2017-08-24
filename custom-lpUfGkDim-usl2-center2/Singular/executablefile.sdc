LIB "fpadim.lib";
ring r = 0,(h,f,e),dp;
int d = 8;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = f(1)*e(2)-e(1)*f(2)+h(1),
h(1)*e(2)-e(1)*h(2)-2*e(1),
h(1)*f(2)-f(1)*h(2)+2*f(1),
16*e(1)*e(2)*f(3)*f(4)+8*e(1)*f(2)*h(3)*h(4)+h(1)*h(2)*h(3)*h(4)-32*e(1)*f(2)*h(3)-4*h(1)*h(2)*h(3)-4*h(1)*h(2)+16*h(1);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
int gkDim = lpUfGkDim(J);
print("=====Solution Begin=====");
print (gkDim, "%s");
print("=====Solution End=====");$;
