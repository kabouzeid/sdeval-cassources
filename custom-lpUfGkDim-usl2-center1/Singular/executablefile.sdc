LIB "fpadim.lib";
ring r = 0,(h,f,e),dp;
int d = 4;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = f(1)*e(2)-e(1)*f(2)+h(1),
h(1)*e(2)-e(1)*h(2)-2*e(1),
h(1)*f(2)-f(1)*h(2)+2*f(1),
4*e(1)*f(2) + h(1)*h(2) - 2*h(1);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
int gkDim = lpGkDim(J,0);
print("=====Solution Begin=====");
print (gkDim, "%s");
print("=====Solution End=====");$;
