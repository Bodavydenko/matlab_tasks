%% %example2

phi=linspace(0,2*pi,360);
r=sin(phi)./phi;
x=r.*cos(phi);
y=r.*sin(phi);
plot(x,y);
%% %example3
x=linspace(0,2,300);
y=humps(x);
plot(x,y);
%% %Task1
x=linspace(-50,50,500);
y=x+1./(x.^2);
plot(x,y);
%% %Task2
x=linspace(-5,5,100);
y=2.*x./(1+x.^2);
plot(x,y);
%% %Task8
a=100;
b=2;
n=4;
k=14;
m=4;
phi=linspace(-pi/2,3*pi/2,720);
r=a.*(b-sin(k.*phi)-cos(m.*phi))./(a+(phi-(pi/2)).^n);
x=r.*cos(phi);
y=r.*sin(phi);
plot(x,y);
%% %Task12
t=linspace(-5,5,1000);
a=1/4;
b=1/16;
m=8;
n=8;
s=100;
x=cos(t)-a.*cos(m.*t)+b.*sin(n.*t);
y=sin(t)-a.*sin(m.*t)+b.*cos(n.*t);
hold on;
for k=1:1:s
    plot(x./k,y./k);
end
hold off;
%Task13
%%
x=linspace(-4*pi,4*pi,300);
y=acos(sin(2.*x));
plot(x,y);
%%
phi=linspace(-100*pi,100*pi,1200);
r=1./phi;
x=r.*cos(phi);
y=r.*sin(phi);
plot(x,y);
%%
phi=linspace(0,pi*10,10000);
x=cos(n.*phi).*(cos(phi)).^m;
y=sin(n.*phi).*(sin(phi)).^m;
plot(x,y);
%Task14
%% %Трезубец ньютона
x=linspace(-5,0,50);
y=x.^2+1./x;
hold on;
plot(x,y);
x=linspace(0,5,50);
y=x.^2+1./x;
plot(x,y);
hold off;
%% %Логарифмическая спираль
a=0.5;
k=0.2;
phi=linspace(0,2*pi,360);
r=a.*exp(k.*phi);
x=r.*cos(phi);
y=r.*sin(phi);
plot(x,y);
%% %Трилистник
n=3;
phi=linspace(0,2*pi,360);
r=1+sin(n.*phi);
x=r.*cos(phi);
y=r.*sin(phi);
plot(x,y);