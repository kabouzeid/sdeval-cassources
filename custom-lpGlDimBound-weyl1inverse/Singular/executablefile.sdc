LIB "fpadim.lib";
ring r = 0,(d,x,t),dp;
int d = 4;
def R = makeLetterplaceRing(d);
setring(R);
ideal I = d(1)*x(2) - x(1)*d(2) - 1, t(1)*x(2) - 1, x(1)*t(2) - 1;
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
int glDim = lpGlDimBound(J);
print("=====Solution Begin=====");
print (glDim, "%s");
print("=====Solution End=====");$;
