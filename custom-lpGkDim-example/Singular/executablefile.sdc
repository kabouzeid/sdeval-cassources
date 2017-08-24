LIB "fpadim.lib";
ring r = 0,(x,y,z),dp;
def R = makeLetterplaceRing(5); // constructs a Letterplace ring
R;
setring R; // sets basering to Letterplace ring
ideal I = z(1); // an example of infinite GK dimension
int gkDim1 = lpGkDim(I,1); // -1
I = x(1),y(1),z(1); // gkDim = 0
int gkDim2 = lpGkDim(I,1); // 0
I = x(1)*y(2), x(1)*z(2), z(1)*y(2), z(1)*z(2);//gkDim = 2
int gkDim3 = lpGkDim(I,1); // 2
option(prot);
option(redSB);
option(redTail);
print("=====Solution Begin=====");
print (gkDim1, "%s");
print (gkDim2, "%s");
print (gkDim3, "%s");
print("=====Solution End=====");$;
