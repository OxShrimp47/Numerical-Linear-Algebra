% Name:Tommy Lee Truong
% Last Edit:May 20 2021
% Program Name: matrix inverse
%% Q2
function x = my_inv(A)
%checks size of A
[n,m]=size(A);
if n~=m
    error("The matrix should be square")
end
% checks invertability of A
d=det(A);
if d==0
    error("The matrix is noninvertable")
end
%Find inverse
%Exchange values across diagonal
w=n;
for i=1:n-1
    for j= 1:n-i
        x(i,j)=A(w,m);
        x(w,m)=A(i,j);
        m=m-1;
    end
    w=w-1;
    m=n;
end
% set diagonal as negative
w=n;
for i=1:n
    x(i,w)=-A(i,w);
    w=w-1;
end
%divide by determinant
x=x./d;
    