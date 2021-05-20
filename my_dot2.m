% Name:Tommy Lee Truong
% Last Edit:Jan 28 2021
% Program Name: Dot Product V2
%%
function a = my_dot(x,y)
% check the sizes
n = length(x);
if n ~= length(y)
    error('Error: Sizes do not match');
end
% summation
a = 0.;
for k=1:n
    a = a + x(k)*y(k);
end
