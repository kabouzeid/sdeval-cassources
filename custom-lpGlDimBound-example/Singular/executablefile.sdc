LIB "fpadim.lib";
ring r = 0,(x,y,z),dp;
def R = makeLetterplaceRing(5); // constructs a Letterplace ring
R;
setring R; // sets basering to Letterplace ring
ideal I = z(1); // an example of infinite GK dimension
int glDim1 = lpGlDimBound(I); // -1
I = x(1),y(1),z(1); // glDim = 0
int glDim2 = lpGlDimBound(I); // 0
I = x(1)*y(2), x(1)*z(2), z(1)*y(2), z(1)*z(2);//glDim = 2
int glDim3 = lpGlDimBound(I); // 2
option(prot);
option(redSB);
option(redTail);
print("=====Solution Begin=====");
print (glDim1, "%s");
print (glDim2, "%s");
print (glDim3, "%s");
print("=====Solution End=====");$;
