LIB "freegb.lib";
ring r = 0,(e,f,h,H),dp;
int d = 4;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = f(1)*e(2)-e(1)*f(2)+h(1)*H(2),
h(1)*e(2)-e(1)*h(2)-2*e(1)*H(2),
h(1)*f(2)-f(1)*h(2)+2*f(1)*H(2),
f(1)*H(2)-H(1)*f(2),
e(1)*H(2)-H(1)*e(2),
h(1)*H(2)-H(1)*h(2),
16*e(1)*e(2)*f(3)*f(4)+8*e(1)*f(2)*h(3)*h(4)+h(1)*h(2)*h(3)*h(4)-32*e(1)*f(2)*h(3)*H(4)-4*h(1)*h(2)*h(3)*H(4)-4*h(1)*h(2)*H(3)*H(4)+16*h(1)*H(2)*H(3)*H(4);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print("=====Solution Begin=====");
print (J, "%s");
print("=====Solution End=====");$;
