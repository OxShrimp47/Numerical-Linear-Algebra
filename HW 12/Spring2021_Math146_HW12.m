% Name:Tommy Lee Truong
% Last Edit:May 6 2021
% Program Name: HW 12
clc; clear all; close all;
%% a
A=imread('jaguar.jpg');
[m,n]=size(A)
maxval=max(max(A))
minval=min(min(A))
%% b
A=double(A);
[U,S,V]=svd(A);
r=rank(A)
sigmavals = diag(S);
figure();
scatter(1:r,sigmavals,'.')
xlabel('i')
ylabel('sigma_i')
%% c
Aapprox35=U(:,1:35)*S(1:35,1:35)*V(:,1:35)';
figure();
imagesc(Aapprox35); colormap(gray)
%% d
Aapprox145=U(:,1:145)*S(1:145,1:145)*V(:,1:145)';
figure();
imagesc(Aapprox145); colormap(gray)
%% e
dataSize_A=m*(1+m+n)
dataSize_Aapprox35=35*(1+m+n)
dataSize_Aapprox145=145*(1+m+n)
