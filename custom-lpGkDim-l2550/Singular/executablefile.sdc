LIB "fpadim.lib";
ring r = (0,q),(z,x,y),(dp(1),dp(2));
def R = makeLetterplaceRing(5); // constructs a Letterplace ring
R; setring R; // sets basering to Letterplace ring
ideal I;
I = q*x(1)*y(2) - y(1)*x(2), z(1)*y(2) - y(1)*z(2), z(1)*x(2) - x(1)*z(2);
I = letplaceGBasis(I);
lpGkDim(I); // must be 3 // JA
I = x(1)*y(2)*z(3) - y(1)*x(2), z(1)*y(2) - y(1)*z(2), z(1)*x(2) - x(1)*z(2);
option(prot);
option(redSB);
option(redTail);
I = letplaceGBasis(I); // not finite BUT contains a poly in x,y only
int gkDim = lpGkDim(I); // must be 4
print("=====Solution Begin=====");
print (gkDim, "%s");
print("=====Solution End=====");$;
