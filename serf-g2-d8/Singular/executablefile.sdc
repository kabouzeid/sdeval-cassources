LIB "freegb.lib";
ring r = 0,(f1,f2,e1,e2,h1,h2),dp;
int d = 8;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = f1(1)*f2(2)*f2(3)-2*f2(1)*f1(2)*f2(3)+f2(1)*f2(2)*f1(3),
e1(1)*e2(2)*e2(3)-2*e2(1)*e1(2)*e2(3)+e2(1)*e2(2)*e1(3),
f1(1)*f1(2)*f1(3)*f1(4)*f2(5)-4*f1(1)*f1(2)*f1(3)*f2(4)*f1(5)+6*f1(1)*f1(2)*f2(3)*f1(4)*f1(5)-4*f1(1)*f2(2)*f1(3)*f1(4)*f1(5)+f2(1)*f1(2)*f1(3)*f1(4)*f1(5),
e1(1)*e1(2)*e1(3)*e1(4)*e2(5)-4*e1(1)*e1(2)*e1(3)*e2(4)*e1(5)+6*e1(1)*e1(2)*e2(3)*e1(4)*e1(5)-4*e1(1)*e2(2)*e1(3)*e1(4)*e1(5)+e2(1)*e1(2)*e1(3)*e1(4)*e1(5),
f2(1)*e1(2)-e1(1)*f2(2),
f1(1)*e2(2)-e2(1)*f1(2),
f1(1)*e1(2)-e1(1)*f1(2)+h1(1),
f2(1)*e2(2)-e2(1)*f2(2)+h2(1),
h1(1)*h2(2)-h2(1)*h1(2),
h1(1)*e1(2)-e1(1)*h1(2)-2*e1(1),
f1(1)*h1(2)-h1(1)*f1(2)-2*f1(1),
h1(1)*e2(2)-e2(1)*h1(2)+e2(1),
f2(1)*h1(2)-h1(1)*f2(2)+f2(1),
h2(1)*e1(2)-e1(1)*h2(2)+3*e1(1),
f1(1)*h2(2)-h2(1)*f1(2)+3*f1(1),
h2(1)*e2(2)-e2(1)*h2(2)-2*e2(1),
f2(1)*h2(2)-h2(1)*f2(2)-2*f2(1);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print("=====Solution Begin=====");
print (J, "%s");
print("=====Solution End=====");$;