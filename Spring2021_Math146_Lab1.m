% Name:Tommy Lee Truong
% Last Edit:Jan 25 2021
% Program Name: Lab 1
%%
clc; clear all; close all;
x=[1 2 3];
y=[3; 2; 1];
%% Calculate A = eye(3) - ones(3,3)
% should result in a matrix of -1's with a diagonal of 0's
A= eye(3) - ones(3,3)
%% Calculate Z = [x;y';ones(1,3)]
% Z=[1 2 3; 3 2 1; 1 1 1]
Z=[x; y'; ones(1,3)]
%% Explain what the command diag(Z) does
% diag(Z) takes the diagonal of matrix Z and produces as column vector
diag(Z)
%% Explain what the command diag(diag(Z)) does
% diag(Z) is a column matrix. diag(diag(z)) will take a column matrix input
% and produce a square matrix that allows for the column vector to be the
% diagonal and the remaing space as zeros.
diag(diag(Z))
%% Explain what the command sum(x.*y) does
% sum(x.*y) is quite strange, it takes the sum of vector y and multiplies
% it as a scalar to each entry in x resulting in a row vector. I ahd
% expected each entry in the each vector to multiply independently and then
% apply a sum of those products to produce a scalar.
sum(x.*y)
%% Calculate B = [1:3; 4:6; 7:9]
% B=[1 2 3; 4 5 6; 7 8 9]
B= [1:3; 4:6; 7:9]
%% Calculate the vector [4 5 6] from B
B(2,:)
%% Calculate the vector [4;5;6] from B
B(2,:)'
%% Calculate the vector [2 5 8] from B
B(:,2)'