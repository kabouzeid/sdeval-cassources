LIB "freegb.lib";
ring r = 0,(u,v,U,V),dp;
int d = 18;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = u(1)*U(2)-1,
U(1)*u(2)-1,
v(1)*V(2)-1,
V(1)*v(2)-1,
v(1)*U(2)*v(3)*v(4)*U(5)*v(6)-1,
U(1)*v(2)*U(3)*v(4)*U(5)*v(6)-1,
u(1)*u(2)*u(3)*v(4)*u(5)*v(6)*v(7)*v(8)*u(9)*u(10)*v(11)*v(12)*v(13)*u(14)*u(15)*u(16)*v(17)*v(18)-1;
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print("=====Solution Begin=====");
print (J, "%s");
print("=====Solution End=====");$;