% Name:Tommy Lee Truong
% Last Edit:Feb 2 2021
% Program Name: HW 1
clc; clear all; close all;
% for pen and paper problems see pdf scan
%% Q2
A=[diag([2;4;7]),ones(3,2);ones(2,3),zeros(2,2)]
%% Q3
A =randn(5,5)
B =randn(5,5)
% 3a
C =trace(A*B)-trace(B*A)
% 3b
C =(A*B)'-B'*A'
%% Q4
N=10000;
M=20;
x=rand(1,N);
hist(x,M)

% 4a
% The commands seem to have generated a uniform histogram of 20 random values from
% 1 to 10000

%4b
M=100;
N=1e8;
hist(x.^2,M)
% Squaring the function x seem to have produced a logistic histogram.