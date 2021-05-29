%% %Task1
a=rand(4,3)
b=rand(3,4)
c=a*b
%%В задании после создания 2-х матриц написано выделить верхний диагональный
%%блок "полученной" матрицы. Так как мы не производили никаких операций, но
%%после этого находим произведение матриц, я решил вывести диагональные
%%блоки всех трёх матриц, т.к. не ясно, с какой именно матрицей нужно это
%%проделать
a(1:3,1:3)
b(1:3,1:3)
c(1:3,1:3)
det(c)
%% %Task2
n=4;
a=rand(n,1);
b=rand(1,n);
a*b
b*a
det(a*b)
%% %Task3
a=rand(5,3);
b=rand(2,3);
c=[a,zeros(5,2);b,eye(2,2)]
c(1:7,5)
%% %Task4
a=rand(6,3)
b=a(1:3,1:3)
d=det(b)
if(d~=0)
    b=b^-1
    det(b)*d
    if(det(b)*d==1.0)
        disp('Обращение произведено верно')
    end
end
%% %Task5
a=rand(3,5)
b=a(1:3,1:3)
d=det(b)
a(1,1:3)=a(2,1:3);
b=a(1:3,1:3)
d=det(b)
%% %Task6
a=rand(20,20);
b=sort(roots(poly(a)))
%% %Task7
a=rand(4,4)
[v,d,w]=eig(a)
%% %Task8
n=5
d=[zeros(n-1,1),diag(ones(1,n-1));1,zeros(1,n-1)]+[zeros(n-1,1),diag(ones(1,n-1));1,zeros(1,n-1)]'-2.*diag(ones(1,n))
%% %Task9
a=rand(8)
disp('max in columns:')
for i=linspace(1,8,8)
    disp(max(a(1:8,i)))
end
disp('max in lines:')
for i=linspace(1,8,8)
    disp(max(a(i,1:8)))
end
disp('max:')
disp(max(max(a)))
for i=linspace(1,8,8)
    for j=linspace(1,8,8)
        if(a(i,j)>0.2)
           disp([i,j]) 
        end
    end
end