% Name:Tommy Lee Truong
% Last Edit:May 20 2021
% Program Name: Front Solve
%% Q1b(HW2)
function x = FrontSolve(U,b)
%intiates x as a matrix product compatiable with matricies U and b
x=ones(size(U,2),size(b,2));
%solves for x
n=size(x,1);
for i=2:n 
    sum= 0.0;
    for j= 1:i-1
        sum = sum + U(i,j)*x(j);
    end
    x(i) = (b(i)-sum)/U(i,i);
end
end 