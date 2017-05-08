LIB "fpadim.lib";
ring r = 0,(iz,z,x,y),dp;
def R = makeLetterplaceRing(11); // constructs a Letterplace ring
R; setring R; // sets basering to Letterplace ring
ideal I;
I = x(1)*y(2)*z(3) - y(1)*x(2), z(1)*y(2) - y(1)*z(2), z(1)*x(2) - x(1)*z(2),
iz(1)*y(2) - y(1)*iz(2), iz(1)*x(2) - x(1)*iz(2), iz(1)*z(2)-1, z(1)*iz(2) -1;
option(prot);
option(redSB);
option(redTail);
I = letplaceGBasis(I);
print("=====Solution Begin=====");
print (I, "%s");
print("=====Solution End=====");$;
