% Name:Tommy Lee Truong
% Last Edit:May 20 2021
% Program Name: Back Solve
%% Q1a(HW2)
function x = BackSolve(U,b)
%intiates x as a matrix product compatiable with matricies U and b
x=ones(size(U,2),size(b,2));
%solves for x
n=size(x,1);
for i=n-1:-1:1 
    sum= 0.0;
    for j= i+1:n 
        sum = sum + U(i,j)*x(j);
    end
    x(i) = (b(i)-sum)/U(i,i);
end
end 