% Name:Tommy Lee Truong
% Last Edit:Feb 16 2021
% Program Name: HW 3
clc; clear all; close all;
% for pen and paper problems see pdf scan
%% Q2b test 1
A=[1:3;(2:3)',5*ones(2,1),4*ones(2,1)];
b=[-3;-1;0];
x=my_LUsolve(A,b)
%% Q2b test 2
A=[1:3;(2:3)',5*ones(2,1),4*ones(2,1)];
b=[-1;0;2];
x=my_LUsolve(A,b)
%% Q2b test 3
A=rand(4,4)
b=rand(4,1)
x=my_LUsolve(A,b)
