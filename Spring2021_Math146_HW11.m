% Name:Tommy Lee Truong
% Last Edit:Apr 29 2021
% Program Name: HW 11
clc; clear all; close all;
%% 1
% 1a)
%A is 4x3 matrix
%U is 4x4 matrix
%Sigma is 4x3 matrix
%V is 3x3 matrix
% 1b)
A=[1,1,0;
    0,1,1;
    1,2,1;
    1,0,-1]
U=[1/sqrt(6),-1/sqrt(6), -1/sqrt(3),-1/sqrt(3);
    1/sqrt(6),1/sqrt(6),1/sqrt(3),-1/sqrt(3);
    sqrt(2/3), 0,0,1/sqrt(3);
    0,-sqrt(2/3),1/sqrt(3),0];
S=[3,0,0;
    0,sqrt(3),0;
    0,0,0;
    0,0,0];
V=[1/sqrt(6),-1/sqrt(2),1/sqrt(3);
    sqrt(2/3), 0,-1/sqrt(3);
    1/sqrt(6),1/sqrt(2),1/sqrt(3)];
A=U*S*transpose(V)
% 1c) all results should be the Identity matrix
U*transpose(U)
V*transpose(V)
% 1d) 
% Rank of A: 2 
% singular values of A:3, sqrt(3)
% 1e)
e=eig(A*transpose(A))
e=eig(transpose(A)*A)
% these matrix products seem to be the square of the singular values of A.
% 1f)
u1=U(:,1)
u2=U(:,2)
u3=U(:,3)
u4=U(:,4)
v1=V(:,1)
v2=V(:,2)
v3=V(:,3)
s=diag(S(1:3,:));
% 1g)
A*v1
s(1)*u1
%yes
A*v2
s(2)*u2
%yes
A*v3
s(3)*u3
%no
% 1h)
transpose(A)*u1
v1*s(1)
%yes
transpose(A)*u2
v2*s(2)
%yes
transpose(A)*u3
%is zero
transpose(A)*u4
v3*s(3)
%no
% 1i)
%transpose(A)*A*v1=sqrt(lambda3)*v1
%transpose(A)*A*v2=sqrt(lambda2)*v2
%transpose(A)*A*v3=sqrt(lambda1)*v3
% 1j)
%A*transpose(A)*u1=sqrt(lambda4)*u1
%A*transpose(A)*u2=sqrt(lambda3)*u2
%A*transpose(A)*u3=sqrt(lambda2)*u3
%A*transpose(A)*u4=sqrt(lambda1)*u4
% 1k)
[U1,S1,V1]=svd(A)
U
S
V
% they are different but this is ok because it is just a variation of the
% breakdown of the matrix A , this occurance can be noticed by observing
% that in S and V a -1 is multiplied into the matrix, this change in S nad
% V needs to be accounted for in a more drastic difference in U.
%% 2
A=[2,5,4;
    6,3,0;
    8,8,4;
    2,-7,-8]
%2a)
[U,S,V]=svd(A)
U*S*transpose(V)
A
%2b)
rank(A)
sigma1=S(1,1)
sigma2=S(2,2)
%2c)
%orthonormal basis R4
% u is normal
transpose(U(:,1))*U(:,1)
transpose(U(:,2))*U(:,2)
transpose(U(:,3))*U(:,3)
transpose(U(:,4))*U(:,4)
% u is orthogonal
transpose(U(:,1))*U(:,2)
transpose(U(:,1))*U(:,3)
transpose(U(:,1))*U(:,4)
transpose(U(:,2))*U(:,3)
transpose(U(:,2))*U(:,4)
transpose(U(:,3))*U(:,4)
%orthonormal basis R3
% V is normal
transpose(V(:,1))*V(:,1)
transpose(V(:,2))*V(:,2)
transpose(V(:,3))*V(:,3)
% V is orthogonal
transpose(V(:,1))*V(:,2)
transpose(V(:,1))*V(:,3)
transpose(V(:,2))*V(:,3)
% 2d)
A*V(:,1)
sigma1*U(:,1)
A*V(:,2)
sigma2*U(:,2)
A*V(:,3)
0
% 2e)
transpose(A)*U(:,1)
sigma1*V(:,1)
transpose(A)*U(:,2)
sigma2*V(:,2)
transpose(A)*U(:,3)
0
transpose(A)*U(:,4)
0
