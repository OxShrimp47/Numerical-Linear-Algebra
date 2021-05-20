%Wkst 7 Math 146
close all; clear all; clc;
A=[-2,3,-1;-2,5,-2;-7,5,0];
lambda=[-1;1;3];
%%
%1a)
e=eig(A)
%1b) e contains the eigen values as a column vector
%%
%2a)
[V,D]=eig(A)
%2b) D is a matrix that is the product of lambda times the identity matrix
%2c)
e=diag(D)
%%
%3a)
v1=V(:,1)
v2=V(:,2)
v3=V(:,3)
%3b)
Av1=A*v1
lambdav1=lambda(1)*v1
Av2=A*v2
lambdav2=lambda(2)*v2
Av3=A*v3
lambdav3=lambda(3)*v3
%%
%4a)
R=V*D*inv(V);
R=norm(R)
L=norm(A)
