%% Q2a(HW3)
function x = my_LUsolve(A,b)
[L,U]=my_LUdecomp(A);
y=FrontSolve(L,b);
x=BackSolve(U,y);