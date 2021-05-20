% Name:Tommy Lee Truong
% Last Edit:May 20 2021
% Program Name: LU decomp V2
%% Q3
function [L, U, P] = ludecomp(A,n)
% check the size of A
[n,m] = size(A);
if n~=m
    error("The matrix should be square")
end
% checks if A is singular
d=det(A);
if d==0
    fprintf("The matrix is singular")
end
% essential computation starts here
P = eye(n);
L = eye(n);
U = A;
for i = 1:n-1
    %%% task1 %%%
    [val, pos] = max(abs(U(i:n,i)));
    pivotindex = pos + i - 1;
    %%% task2 %%%
    if pivotindex ~= i
        %%% task2-1
        tmp = U(i,i:n);
        U(i,i:n) = U(pivotindex,i:n);
        U(pivotindex,i:n) = tmp;
        %%% task2-2
        tmp = P(i,1:n);
        P(i,1:n) = P(pivotindex,1:n);
        P(pivotindex,1:n) = tmp;
        %%% task2-3
        tmp = L(i,1:i-1);
        L(i,1:i-1) = L(pivotindex,1:i-1);
        L(pivotindex,1:i-1) = tmp;
    end
    %%% task3 %%%
    rm = U(i+1:n,i)/U(i,i);
    L(i+1:n,i) = rm;
    %%% task4 %%%
    U(i+1:n,i) = zeros(n-i,1);
    U(i+1:n,i+1:n) = U(i+1:n, i+1:n) - rm*U(i,i+1:n);
end