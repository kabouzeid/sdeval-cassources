LIB "fpadim.lib";
ring r = (0,a,b,g),(x,y),Dp;
def R = makeLetterplaceRing(6); // constructs a Letterplace ring
setring R;
poly F1 = g*x(1);
poly F2 = g*y(1);
ideal J = x(1)*x(2)*y(3)-a*x(1)*y(2)*x(3) - b*y(1)*x(2)*x(3) - F1,
x(1)*y(2)*y(3)-a*y(1)*x(2)*y(3) - b*y(1)*y(2)*x(3) - F2;
option(prot);
option(redTail);
option(redSB);
J = letplaceGBasis(J);
int glDim = lpGlDimBound(J);
print("=====Solution Begin=====");
print (glDim, "%s");
print("=====Solution End=====");$;
