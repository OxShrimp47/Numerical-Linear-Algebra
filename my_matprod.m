% Name:Tommy Lee Truong
% Last Edit:Feb 1 2021
% Program Name: Cross Product V1
%%
function C = my_matprod(A,B)
[m, n] = size(A);
[l,p]=size(B)
if n ~= l
    error("Error: Sizes do not match");
end
C= zeros(m,n);
for i=1:m
    tmp=0;
    tmp2=0;
    for j=1:n
    for k=1:n
    
    end
    
        tmp = tmp + A(i,k)*B(j,k);
    end

    C(i)=tmp;
end
end