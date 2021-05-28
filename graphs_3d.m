%% %Task1/1
t=0:0.05:9*pi;
x=2*sin(t);y=3*cos(t);
plot3(x,y,t)
%% %Task1/2
t=0:0.05:9*pi;
x=2*sin(t);y=3*cos(t);
plot3(x,y,t)
t0=7*pi/2;
hold on;
fx=@(t) 2*cos(t);
fy=@(t) -3*sin(t);
line([2*sin(t0),fx(t0)+2*sin(t0)],[3*cos(t0),fy(t0)*2+3*cos(t0)],[t0,t0]);
plot3(2*sin(t0),3*cos(t0),t0,'x')
hold off;
%% %Task1/3
n=1000
t1=pi.*(-n:5:n)/n;
t2=(pi/2)*(-n:5:n)'/n;
X=cos(t2)*cos(t1);
Y=cos(t2)*sin(t1);
E=ones(size(t1));
Z=sin(t2)*E;
plot3(X,Y,Z,'b')
%% %Example
[x,y]=meshgrid(linspace(-pi,pi,100),linspace(-pi,pi,100));
z=20-x.^2-y.^2;
surf(x,y,z);
hold on;
phi=linspace(0,6*pi,300);
x=0.1.*phi.*cos(phi);
y=0.1.*phi.*sin(phi);
line([0,0],[-1,-3],[19,20]);
z=20-x.^2-y.^2;
plot3(x,y,z);
z=0.*z;
plot3(x,y,z);
hold off;
%% %Task1
a=2;
b=1;
c=0;
d=3;
if(c~=0)
    [x,y]=meshgrid(linspace(-10,10,50),linspace(-10,10,50));
    z=-(a.*x+b.*y+d)/c;
else
    if(b~=0)
        [x,z]=meshgrid(linspace(-10,10,50),linspace(-10,10,50));
        y=-(a.*x+c.*z+d)/b;
    else
        [z,y]=meshgrid(linspace(-10,10,50),linspace(-10,10,50));
        x=-(c.*z+b.*y+d)/a;
    end
end
surf(x,y,z);
%% %Task2a
a=3;
[x,y]=meshgrid(linspace(-10,10,100),linspace(-10,10,100));
z=a.*sin(sqrt(x.^2+y.^2))./sqrt(x.^2+y.^2);
mesh(x,y,z);
%% %Task2b
[x,y]=meshgrid(linspace(-10,10,100),linspace(-10,10,100));
z=-x.*sin(x)-y.*cos(y);
mesh(x,y,z);
%% %Task3a
[x,y]=meshgrid(linspace(-3,3,50),linspace(-3,3,50));
a=1;
z=a.*x.*exp(-x.^2-y.^2);
surf(x,y,z);
%% %Task3b
[alpha,beta]=meshgrid(linspace(-pi,pi,100),linspace(-pi,pi,100));
a=1;
c=1;
x=a.*cosh(alpha).*cos(beta);
y=a.*cosh(alpha).*sin(beta);
z=c.*sinh(alpha);
surf(x,y,z);
%% %Task3d
[alpha,beta]=meshgrid(linspace(-pi,pi,100),linspace(-pi,pi,100));
a=-10;
c=1;
x=a.*sinh(alpha).*cos(beta);
y=a.*sinh(alpha).*sin(beta);
surf(x,y,z);
z=c.*cosh(alpha);
hold on;
surf(x,y,-z);
hold off;