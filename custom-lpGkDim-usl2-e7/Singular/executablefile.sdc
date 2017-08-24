LIB "fpadim.lib";
ring r = 0,(h,f,e),dp;
int d = 9;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = f(1)*e(2)-e(1)*f(2)+h(1),
h(1)*e(2)-e(1)*h(2)-2*e(1),
h(1)*f(2)-f(1)*h(2)+2*f(1),
e(1)*e(2)*e(3)*e(4)*e(5)*e(6)*e(7);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
int gkDim = lpGkDim(J,1);
print("=====Solution Begin=====");
print (gkDim, "%s");
print("=====Solution End=====");$;
