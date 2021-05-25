%% %Task1a
mu=0.1;
a=0;
b=2*pi;
f=@(x) exp(-mu.*(x.^2)).*cos(x.^2);
plot(linspace(a,b,1000),f(linspace(a,b,1000)));
x=ginput(2);
[x,y]=fminbnd(f,x(1,1),x(2,1));
hold on;
plot(x,y,'x');
hold off;
%% %Task1b
a=0;
b=2*pi/3;
alpha=1;
beta=2;
f=@(x) 1./((alpha.*cos(x)+beta.*sin(x)).^2);
plot(linspace(a,b,1000),f(linspace(a,b,1000)));
x=ginput(2);
[x,y]=fminbnd(f,x(1,1),x(2,1));
hold on;
plot(x,y,'x');
hold off;
%% %Task1c
a=0;
b=4;
f=@(x) 2.-abs(x).*exp(-abs(x-1));
plot(linspace(a,b,1000),f(linspace(a,b,1000)));
x=ginput(2);
[x,y]=fminbnd(f,x(1,1),x(2,1));
hold on;
plot(x,y,'x');
hold off;
%% %Task2a
a=0;
b=1;
n=5;
hold on;
for alpha=linspace(1,n,n)
    f=@(x) x.^alpha.*log(x);
    plot(linspace(a,b,100),f(linspace(a,b,100)));
    [x,y]=fminbnd(f,a,b);
    plot(x,y,'x');
end
hold off;
%% %Task2b
a=-1;
b=1;
n=2;
m=3;
hold on;
for alpha=linspace(1,n,n)
    for beta=linspace(1,m,m)
        f=@(x) x.^alpha.*exp(-beta.*x);
        plot(linspace(a,b,100),f(linspace(a,b,100)));
        [x,y]=fminbnd(f,a,b);
        plot(x,y,'x');
    end
end
hold off;
%% %Task2c
a=-5;
b=5;
n=2;
m=2;
hold on;
for alpha=linspace(1,n,n)
    for beta=linspace(1,m,m)
        f=@(x) (x.^alpha).*((1.-x).^beta);
        plot(linspace(a,b,100),f(linspace(a,b,100)));
        [x,y]=fminbnd(f,a,b);
        plot(x,y,'x');
    end
end
hold off;


