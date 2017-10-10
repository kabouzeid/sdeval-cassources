LIB "fpadim.lib";
ring r = 0,(y,x),dp;
int d = 4;
def R = makeLetterplaceRing(d);
setring(R);
ideal I = y(1)*x(2) - x(1)*y(2), x(1)*x(2), y(1)*y(2);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
int gkDim = lpGkDim(J,1);
print("=====Solution Begin=====");
print (gkDim, "%s");
print("=====Solution End=====");$;
