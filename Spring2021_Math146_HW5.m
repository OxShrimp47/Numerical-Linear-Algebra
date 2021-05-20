% Name:Tommy Lee Truong
% Last Edit:Mar 11 2021
% Program Name: HW 5
clc; clear all; close all;
% for pen and paper problems see pdf scan
% the norm functions are explored algebriacally on the corresponding pen
% and paper problems
%% Q1
u=[1;0;-2;2];
v=[0;0;-4;0];
w=[3;0;-3;0];
%% Q1a
nu=sum(abs(u))
nu=norm(u,1)
nv=sum(abs(v))
nv=norm(v,1)
nw=sum(abs(w))
nw=norm(w,1)
% notice how both command yield the same result, this is because the norm
% function for p=1 is essentially the sum of the absolute values of the
% indicies of the vector as as the power and root of 1 does nothing to the
% overall function
%% Q1b
nu=sqrt(sum(abs(u).^2))
nu=norm(u,2)
nv=sqrt(sum(abs(v).^2))
nv=norm(v,2)
nw=sqrt(sum(abs(w).^2))
nw=norm(w,2)
% notice how both command yield the same result, this is because the norm
% function for p=2 follows the formula or any given p value.
% norm(x)=(sum(abs(x).^p)).^(1/p), since p=2 and thus the outer exponential
% is 1/2 it can be rewritten as a square root.
%% Q1c
nu=max(abs(u))
nu=norm(u,inf)
nv=max(abs(v))
nv=norm(v,inf)
nw=max(abs(w))
nw=norm(w,inf)
% notice how both command yield the same result, this is because the norm
% function for p= infinity is essentially the max of the absolute values of
% the indicies of the vector. This is because the sum of the indices set to
% the infinite power can only will approximate to 1 after factoring out the
% maximum index. An algebraic representation of such can be seen on the pen
% and paper problems regarding norms of p=infinity.
%% Q2
A=[-1,2;3,4;5,-6];
B=[1,0,0;-2,3,0;4,-5,6];
% the second argument in the sum command dictates the orientation in whitch
% the sum of the indicies are calculated; either sum of the column or sum
% of the rows. This difference can be valuable in achieving different norms
% as explored in Q2 A & B
%% Q2a
nA=max(sum(abs(A),1))
nA=norm(A,1)
nB=max(sum(abs(B),1))
nB=norm(B,1)
% notice how both commands yield the same result, this is because the norm
% function executes the norm for each column in the matricies then finds
% the maximum values among them. Since this particular norm if of p=1, each
% column is simply the sum of the absolute values.
%% Q2b
nA=max(sum(abs(A),2))
nA=norm(A,inf)
nB=max(sum(abs(B),2))
nB=norm(B,inf)
% notice how both commands yield the same result, this is because the
% maximum norm calculates the longest length the matrix can achieve in a
% multi dimensional matrix (a non vector), this length is the sums of each
% row. 
%% Q3
C=[-1,2;1,1;2,-1];
nC=max(sqrt(eig(C'*C)))
nC=norm(C,2)
%notice how both commands yield the same result,this is because the norm at
%p=2 can be defined as the max of the root of the eigen values of the
%matrix product of a matrix x and its transpose. This can be seen
%algabraically on Q3 a-d on the pen & paper section
