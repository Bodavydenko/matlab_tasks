%% %Task1
p=[1,-3.55,5.1,-3.1];
x=linspace(-10,10,1000);
plot(x,polyval(p,x));
grid on;
%% %Task2
p=[1,0.1,0.2,-0.2,-2,1];
hold on;
subplot(2,1,1);
hold on;
x=linspace(-1*max(abs(roots(p))),max(abs(roots(p))),1000);
plot(x,polyval(p,x),'Color','r');
plot(x,polyval([polyval(polyder(p),max(abs(roots(p)))/2),polyval(p,max(abs(roots(p)))/2)-polyval(polyder(p),max(abs(roots(p)))/2)*(max(abs(roots(p)))/2)],x),'Color','g');
plot(x,polyval([-1/polyval(polyder(p),-max(abs(roots(p)))/2),polyval(p,-max(abs(roots(p)))/2)+1/(polyval(polyder(p),-max(abs(roots(p)))/2))*(-max(abs(roots(p)))/2)],x),'Color','b');
hold off;
axis equal;
subplot(2,1,2);
hold on;
plot(real(roots(p)),imag(roots(p)),'x');
r=real(roots(p));
r=r(1);
plot(r*cos(linspace(0,pi*2,100)),r*sin(linspace(0,pi*2,100)));
hold off;
%% %Task3
format rational;
p=[2,-3,4,-5,6];
q=[1,-3,1];
deconv(p,q)
p=[1,-3,-1,-1];
q=[3,-2,1];
deconv(p,q)
format short;
%% %Task4
p=[1,-2,6,-10,16];
x0=4;
h(1)=p(1);
for i = 2:length(p)
    h(i)=h(i-1)*x0+p(i);
end
for i = 2:(length(p)-1)
    h(i)=h(i-1)*x0+h(i);
end
if(polyval(p,x0)==h(5))
   disp('Значение полинома верно');
else
   disp('Значение полинома не верно');
end
if(polyval(polyder(p),x0)==h(4))
   disp('Значение производной верно');
else
   disp('Значение производной не верно');
end
%% %Task5
n=5;
p=zeros(1,n*2+1);
p(1)=1;
p(n)=-n;
p(n+2)=n;
p(2*n+1)=1;
plot(linspace(min(roots(p)),max(roots(p)),1000),polyval(p,linspace(min(roots(p)),max(roots(p)),1000)));
disp(roots(p));
%% %Task6
p=[2,0,0];
q=conv([1,-1],conv([1,2],[1,3]));
[r,t,k]=residue(p,q)
p=[1,3];
q=conv([1,-1],[1,0,1]);
[r,t,k]=residue(p,q)
p=[1,0,0];
q=[1,0,0,0,-1];
[r,t,k]=residue(p,q)
%% %Task7
n=10;
hold on;
p=(vander(linspace(1,n,n))^-1)*(linspace(1,n,n).^-1)';
roots(p)
plot(linspace(min(roots(p)),max(roots(p)),1000),polyval(p,linspace(min(roots(p)),max(roots(p)),1000)),'Color','r');
p=(vander([-1,0,1,2,3])^-1)*[6;5;0;3;2];
roots(p)
plot(linspace(min(roots(p)),max(roots(p)),1000),polyval(p,linspace(min(roots(p)),max(roots(p)),1000)),'Color','g');
hold off;
%% %Task8
hold on;
p=[1,-2,-8,13,-24];
plot(linspace(min(roots(p)),max(roots(p)),1000),polyval(p,linspace(min(roots(p)),max(roots(p)),1000)),'Color','r');
p=[1,0,-7,-12,6,36];
plot(linspace(min(roots(p)),max(roots(p)),1000),polyval(p,linspace(min(roots(p)),max(roots(p)),1000)),'Color','g');
p=[4,0,-7,-5-1];
plot(linspace(min(roots(p)),max(roots(p)),1000),polyval(p,linspace(min(roots(p)),max(roots(p)),1000)),'Color','b');
hold off;

%% %Task9
n=3;
a=randi(100,n);
p=poly(eig(a));
if(poly(a)==p)
   disp('Матрица является корнем полинома');
else
   disp('Матрица не является корнем полинома');
end
%% %Task10
f=[1,2,-1,-4,-2];
g=[1,1,-1,-2,-2];
[G,S,T]=gcd(f,g);
disp('НОД:');
disp(poly2sym(G));
disp('Линейное разложение:');
disp('F(x)*');
disp(poly2sym(S));
disp('+G(x)*');
disp(poly2sym(T));
f=[1,3,1,1,3,1];
g=[0,1,2,0,1,2];
[G,S,T]=gcd(f,g);
disp('НОД:');
disp(poly2sym(G));
disp('Линейное разложение:');
disp('F(x)*');
disp(poly2sym(S));
disp('+G(x)*');
disp(poly2sym(T));
f=[4,-2,16,5,9];
g=[0,2,-1,-5,4];
[G,S,T]=gcd(f,g);
disp('НОД:');
disp(poly2sym(G));
disp('Линейное разложение:');
disp('F(x)*');
disp(poly2sym(S));
disp('+G(x)*');
disp(poly2sym(T));
%% %Task11
a=ones(100,1);
p=poly(a)
r=roots(a)
plot(linspace(-5,5,1000),polyval(poly(a),linspace(-5,5,1000)));