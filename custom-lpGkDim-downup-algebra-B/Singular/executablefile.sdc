LIB "fpadim.lib";
ring r = (0,a,b,g, p(1..7),q(1..7)),(x,y),Dp;
def R = makeLetterplaceRing(6);
setring R;
ideal imn = 1, y(1)*y(2)*y(3), x(1)*y(2), y(1)*x(2), x(1)*x(2), y(1)*y(2), x(1), y(1);
int i;
poly F1, F2;
for(i=1;i<=7;i++)
{
F1 = F1 + p(i)*imn[i];
F2 = F2 + q(i)*imn[i];
}
ideal J = x(1)*x(2)*y(3)-a*x(1)*y(2)*x(3) - b*y(1)*x(2)*x(3) - F1,
x(1)*y(2)*y(3)-a*y(1)*x(2)*y(3) - b*y(1)*y(2)*x(3) - F2;
option(prot);
option(redSB);
option(redTail);
J = letplaceGBasis(J);
int gkDim = lpGkDim(J,1);
print("=====Solution Begin=====");
print (gkDim, "%s");
print("=====Solution End=====");$;
