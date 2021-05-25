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