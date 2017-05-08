LIB "fpadim.lib";
ring r = 0,(y,x,z),dp;
def R = makeLetterplaceRing(10); // constructs a Letterplace ring
R; setring R; // sets basering to Letterplace ring
ideal I;
I = x(1)*y(2)*z(3) - y(1)*x(2), z(1)*y(2) - y(1)*z(2), z(1)*x(2) - x(1)*z(2);//gkDim = 2
option(prot);
option(redSB);
option(redTail);
I = letplaceGBasis(I); // computed as it would be homogenized; infinite
print("=====Solution Begin=====");
print (I, "%s");
print("=====Solution End=====");$;
