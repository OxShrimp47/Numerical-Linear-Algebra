% Name:Tommy Lee Truong
% Last Edit:Apr 22 2021
% Program Name: HW 10
clc; clear all; close all;
%% Q1
A=[3,1,1;1,2,2;1,2,2]
% a
[P,D]=eig(A)
% b
P*transpose(P)
% c
P*D*transpose(P)
%% Q2
B=[5,2;2,2]
v1=[2/sqrt(5); 1/sqrt(5)]
v2=[1/sqrt(5); -2/sqrt(5)]
% a
P=[v1,v2]
x=B*P;
lambda1=x(1,1)/P(1,1);
lambda2=x(2,2)/P(2,2);
lambda=[lambda1;lambda2];
D=diag(lambda)
% b
decomp=lambda1*v1*transpose(v1)+lambda2*v2*transpose(v2)
% c
w=3*v1 -2*v2
Bw=B*w
B2W=(B^2)*w
%d
B^2
P*(D^2)*transpose(P)
B^3
P*(D^3)*transpose(P)
