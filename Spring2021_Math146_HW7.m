% Name:Tommy Lee Truong
% Last Edit:Mar 30 2021
% Program Name: HW 7
clc; clear all; close all;
%% initial conditions
A=[-1,2;1,1;2,1];
b=[-10;15;5];
%% b)  find least-squares solution x
x= inv(transpose(A)*A)*transpose(A)*b
%% c) compute error vector e and square error E
e=b-A*x
E=(norm(e,2)).^2
%% d) compute relative error epsilon
epsilon=(E.^(0.5))/(norm(b,2))
%% e) show error vector is orthogonal to column vectors of A
% both should be 0
transpose(A(:,1))*e
transpose(A(:,2))*e
%% f)
%norm2 of Ax
nAx=norm(b-e,2)
%norm2 of b
nb=norm(b,2)
% both should be 350
E+nAx.^2
nb.^2