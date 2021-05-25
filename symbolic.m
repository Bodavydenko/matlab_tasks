syms x y;
disp('Task1:')
factor(x^5+4*x^4-2*x^3-14*x^2-3*x-18)
factor(x^3+x^2*y+x^2-2*x*y^2+x*y-2*y^2)
disp('Task2:')
limit(x*exp(-x),x,inf)
limit(tan(x)^tan(2*x),x,pi/4)
limit(atan(1/(1-x)),x,1,'right')
limit((7*x^3+x^2-1)/(5*x^2+2*x+1),x,inf)
limit((sqrt(x+y)-sqrt(x))/y,y,0)
disp('Task3:')
simplify(diff(atan(x)/2-x/(2*(1+x^2)^2)))
simplify(diff(3*x^4-14*x^3+12*x^2+24*x+6))
simplify(diff((sin(3*x)-cos(3*x))^2))
simplify(diff(log(x^2+2)/2+(2-x)/(4*(x^2+2))-1/(4*2^(1/2))*atan(x/2^(1/2))))
simplify(diff((1/6)*log((x-3)/(x+3))))
disp('Task4:')
int((1-x^2)^(1/2)/(x^2))
int(1/((sin(x))^3))
int((sin(2*x)+1)^(1/7)*cos(2*x))
int((15*sqrt(x+3))/((x+3)^2*sqrt(x)),1/8,1)
int(1/(1+x^2),0,inf)
int(1/(x^2-1),-2,2)
int(log(sin(x)),0,pi/2)
disp('Task5:')
symsum(1/(x.^x),x,1,inf)
symsum((-1)^((x^2+x)/2)*x/2^x,1,inf)
symsum(x^(y),y,0,inf)
symsum((3-x)^(2*y)/sqrt(y),y,0,inf)
symsum(1/((x-y)^3),y,-inf,inf)
%% %Task6.1
syms x;
a=0;
n=5;
taylor(exp(x),x,'ExpansionPoint',a,"Order",n)
hold on;
ezplot(exp(x),[-5,5]);
ezplot(taylor(exp(x),x,'ExpansionPoint',a,"Order",n),[-5,5]);
hold off;
%% %Task6.2
syms x;
a=-1;
n=3;
taylor(log(2*x-1),x,'ExpansionPoint',a,"Order",n)
hold on;
ezplot(log(2*x-1),[-1,1]);
ezplot(taylor(log(2*x-1),x,'ExpansionPoint',a,"Order",n),[-1,1]);
hold off;
%% %Task6.3
syms x;
a=0;
n=10;
taylor(sin(x)^2,x,'ExpansionPoint',a,"Order",n)
hold on;
ezplot(sin(x)^2,[-2,2]);
ezplot(taylor(sin(x)^2,x,'ExpansionPoint',a,"Order",n),[-2,2]);
hold off;
%% %Task7
syms x;
hold on;
ezplot(exp(1/(1-x^2))/(1+x^2),[-7,7]);
e=solve(diff(exp(1/(1-x^2))/(1+x^2))==0);
plot(e,exp(1./(1-e.^2))./(1+e.^2),'x');
hold off;
%% %Task8
syms x;
f=matlabFunction(sin(x)/(x^2+1));
xmin = fminbnd(func, -5, 5);
hold on
plot(linspace(-5,5,100),f(linspace(-5,5,100)));
g=matlabFunction(-sin(x)/(x^2+1));
plot([fminbnd(func,-5,5),fminbnd(g,-5,5)],f([fminbnd(func,-5,5),fminbnd(g,-5,5)]),'x')
hold off
%% %Task9
syms t u;
x=t*cos(u)*cos(u);
y=t^2*cos(u)*sin(u);
z=t^3*sin(u);
k=simplify(sqrt((det([diff(y),diff(z);diff(y,2),diff(z,2)])^2+det([diff(z),diff(x);diff(z,2),diff(x,2)])^2+det([diff(x),diff(y);diff(x,2),diff(y,2)])^2)/(diff(x)^2+diff(y)^2+diff(z)^2))/(diff(x)^2+diff(y)^2+diff(z)^2))
K=simplify(det([diff(x),diff(y),diff(z);diff(x,2),diff(y,2),diff(z,2);diff(x,3),diff(y,3),diff(z,3)])/k^2)