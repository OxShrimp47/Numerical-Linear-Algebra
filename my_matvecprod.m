% Name:Tommy Lee Truong
% Last Edit:Feb 1 2021
% Program Name: Cross Product V2
%%
function y = my_matvecprod(A,x)
% check the sizes
[m, n] = size(A);
if n ~= length(x)
    error("Error: Sizes do not match");
end
%allocate y
y= zeros(m,1);
%compute each component
for i=1:m
    %summation loop
    tmp=0;
    for k=1:n
        tmp = tmp + A(i,k)*x(k);
    end
    y(i)=tmp;
end
end
