% Name:Tommy Lee Truong
% Last Edit:Jan 28 2021
% Program Name: Dot Product
%%
function a= my_dot(x,y)
%size of vector x
n=length(x);
%summantion
a=0;
if(n~=length(y))
    error("Error: sizes do not match")
else
for k= 1:n
    a= a+x(k)*y(k);
end
end
end

    