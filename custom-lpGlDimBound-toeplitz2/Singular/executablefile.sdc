LIB "fpadim.lib";
ring r = 0,(y,x),dp;
int d = 4;
def R = makeLetterplaceRing(d);
setring(R);
ideal I = y(1)*x(2) - 1;
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
int glDim = lpGlDimBound(J);
print("=====Solution Begin=====");
print (glDim, "%s");
print("=====Solution End=====");$;
