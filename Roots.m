%% %Task3a
plot(linspace(-3,3,100),sin(exp(linspace(-3,3,100))));
hold on;
x=ginput(1);
plot(x(1),sin(exp(x(1))),'gx')
[x,y]=fzero(@(x)sin(exp(x)),x(1));
plot(x,y,'rx')
hold off;
%% %Task3b
plot(linspace(0,2*pi,100),sin((linspace(0,2*pi,100).*(1.-linspace(0,2*pi,100)))));
hold on;
x=ginput(1);
plot(x(1),sin(x(1).*(1.-(x(1)))),'gx')
[x,y]=fzero(@(x)sin(x.*(1.-x)),x(1));
plot(x,y,'rx')
hold off;
%% %Task3c
x=linspace(0,4*pi,360);
plot(x,x.*sin(x)-cos(x));
hold on;
x=ginput(1);
plot(x(1),x(1).*sin(x(1))-cos(x(1)),'gx')
[x,y]=fzero(@(x)x.*sin(x)-cos(x),x(1));
plot(x,y,'rx')
hold off;
%% %Task3d
x=linspace(pi/2,3*pi,360);
f=@(x)(sin(x)).^2.+(0.5-1./x)-0.5;
plot(x,f(x));
hold on;
x=ginput(1);
plot(x(1),f(x(1)),'gx')
[x,y]=fzero(f,x(1));
plot(x,y,'rx')
hold off;
%% %Task3e
x=linspace(-2*pi,6*pi,360);
f=@(x)5.*(exp(-0.1.*x)).*sin(x)-0.1.*x;
plot(x,f(x));
hold on;
x=ginput(1);
plot(x(1),f(x(1)),'gx')
[x,y]=fzero(f,x(1));
plot(x,y,'rx')
hold off;
%% %Task3f
n=input('n=');
x=linspace(-5,5,100);
f=@(x)x.^n-1;
plot(x,f(x));
hold on;
x=ginput(1);
plot(x(1),f(x(1)),'gx')
[x,y]=fzero(f,x(1));
plot(x,y,'rx')
hold off;
%% %Task4
x=linspace(-5,5,100);
f=@(x)x.^2+1;
plot(x,f(x));
hold on;
x=ginput(1);
plot(x(1),f(x(1)),'gx');
[x,y]=fzero(f,x(1));
plot(x,y,'rx');
syms x;
disp(solve(x*x+1==0));
hold off;
%% %Task5
x=linspace(-1,1,100);
f=@(x)cos(x)-exp(0.001+x.^2);
plot(x,f(x));
hold on;
x=ginput(1);
plot(x(1),f(x(1)),'gx');
[x,y]=fzero(f,x(1));
plot(x,y,'rx');
syms x;
disp(solve(f(x)==0));
hold off;
%% %TaskNa
ab=linspace(0,12,100);
h=0.1;
iter=100;
eps=0.01;
f=@(x)1+x.*sin(x);
hold on;
plot(ab,f(ab));
x=ginput(1);
x=x(1);
for i=linspace(1,iter,iter)
    line([x,x],[0,f(x)]);
    ab=linspace(x-1,x+1,100);
    plot(ab,(ab-x)*(f(x+h)-f(x))/h+f(x));
    x1=x-h*(f(x))/(f(x+h)-f(x));
    plot(x,f(x),'x');
    plot(x1,f(x1),'x');
    x=x1;
    if abs(f(x))<eps
        break;
    end
end
hold off;
disp(x);
%% %TaskNb
ab=linspace(0,7,100);
h=0.1;
iter=100;
eps=0.01;
f=@(x)sin(x)./x;
hold on;
plot(ab,f(ab));
x=ginput(1);
x=x(1);
for i=linspace(1,iter,iter)
    line([x,x],[0,f(x)]);
    ab=linspace(x-1,x+1,100);
    plot(ab,(ab-x)*(f(x+h)-f(x))/h+f(x));
    x1=x-h*(f(x))/(f(x+h)-f(x));
    plot(x,f(x),'x');
    plot(x1,f(x1),'x');
    x=x1;
    if abs(f(x))<eps
        break;
    end
end
hold off;
disp(x);
%% %TaskNc
ab=linspace(0,8,100);
h=0.1;
iter=100;
eps=0.01;
f=@(x)1+(1+sin(x)-cos(x)).^2-(sin(2.*x)-cos(2.*x)-0.2).^2;
hold on;
plot(ab,f(ab));
x=ginput(1);
x=x(1);
for i=linspace(1,iter,iter)
    line([x,x],[0,f(x)]);
    ab=linspace(x-1,x+1,100);
    plot(ab,(ab-x)*(f(x+h)-f(x))/h+f(x));
    x1=x-h*(f(x))/(f(x+h)-f(x));
    plot(x,f(x),'x');
    plot(x1,f(x1),'x');
    x=x1;
    if abs(f(x))<eps
        break;
    end
end
hold off;
disp(x);
%% %TaskDa
ab=linspace(0,12,100);
h=0.1;
iter=100;
eps=0.01;
f=@(x)1+x.*sin(x);
hold on;
plot(ab,f(ab));
l=ginput(1);
l=l(1);
r=ginput(1);
r=r(1);
m=(l+r)/2;
for i=linspace(1,iter,iter)
    m=(l+r)/2;
    %plot(l,f(l),'x');
    %plot((l+r)/2,f((l+r)/2),'x');
    %plot(r,f(r),'x');
    if(abs(f(m))<eps)
        break;
    end
    if f(m)*f(l)<0
        r=m;
    else
        l=m;
    end
end
if(abs(f(m))<eps)
    plot(m,f(m),'*');
    disp(m);
else
    disp('Корней на отрезке не обнаружено');
end
hold off;
%% %TaskDb
ab=linspace(0,7,100);
iter=100;
eps=0.01;
f=@(x)sin(x)./x;
hold on;
plot(ab,f(ab));
l=ginput(1);
l=l(1);
r=ginput(1);
r=r(1);
m=(l+r)/2;
for i=linspace(1,iter,iter)
    m=(l+r)/2;
    %plot(l,f(l),'x');
    %plot(m,f(m),'x');
    %plot(r,f(r),'x');
    if(abs(f(m))<eps)
        break;
    end
    if f(m)*f(l)<0
        r=m;
    else
        l=m;
    end
end
if(abs(f(m))<eps)
    plot(m,f(m),'*');
    disp(m);
else
    disp('Корней на отрезке не обнаружено');
end
hold off;
%% %TaskDc
ab=linspace(0,8,100);
iter=100;
eps=0.01;
f=@(x)1+(1+sin(x)-cos(x)).^2-(sin(2.*x)-cos(2.*x)-0.2).^2;
hold on;
plot(ab,f(ab));
l=ginput(1);
l=l(1);
r=ginput(1);
r=r(1);
m=(l+r)/2;
for i=linspace(1,iter,iter)
    m=(l+r)/2;
    %plot(l,f(l),'x');
    %plot(m,f(m),'x');
    %plot(r,f(r),'x');
    if(abs(f(m))<eps)
        break;
    end
    if f(m)*f(l)<0
        r=m;
    else
        l=m;
    end
end
if(abs(f(m))<eps)
    plot(m,f(m),'*');
    disp(m);
else
    disp('Корней на отрезке не обнаружено');
end
hold off;
