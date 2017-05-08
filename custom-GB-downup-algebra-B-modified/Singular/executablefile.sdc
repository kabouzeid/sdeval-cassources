LIB "fpadim.lib";
ring r = (0),(x,y),Dp;
int a = 1; int b = 1; int g = 1;
def R = makeLetterplaceRing(8);
setring R;
ideal imn = 1, y(1)*y(2)*y(3), x(1)*y(2), y(1)*x(2), x(1)*x(2), y(1)*y(2), x(1), y(1);
int i;
poly F1, F2;
for(i=1;i<=7;i++)
{
F1 = F1 + imn[i];
F2 = F2 + imn[i];
}
ideal J = x(1)*x(2)*y(3)-a*x(1)*y(2)*x(3) - b*y(1)*x(2)*x(3) - F1,
x(1)*y(2)*y(3)-a*y(1)*x(2)*y(3) - b*y(1)*y(2)*x(3) - F2;
option(prot);
option(redSB);
option(redTail);
J = letplaceGBasis(J);
print("=====Solution Begin=====");
print (J, "%s");
print("=====Solution End=====");$;
