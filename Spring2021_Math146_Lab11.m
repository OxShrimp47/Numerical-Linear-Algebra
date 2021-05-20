% Name:Tommy Lee Truong
% Last Edit:May 20 2021
% Program Name: Lab 11
clc; clear all; close all;
%%
A=imread('horsehead-nebula.tif');
[m,n]=size(A)
maxval=max(max(A))
minval=min(min(A))
%imagesc(A); colormap(gray)
A=double(A);
[U,S,V]=svd(A);
r=rank(A)
sigmavals = diag(S);
figure();
scatter(1:r,sigmavals,'.')
xlabel('i')
ylabel('sigma_i')
Aapprox35=U(:,1:35)*S(1:35,1:35)*V(:,1:35)';
figure();
imagesc(Aapprox35); colormap(gray)
Aapprox145=U(:,1:145)*S(1:145,1:145)*V(:,1:145)';
figure();
imagesc(Aapprox145); colormap(gray)
Aapprox200=U(:,1:200)*S(1:200,1:200)*V(:,1:200)';
figure();
imagesc(Aapprox200); colormap(gray)
k=145
Aapproxk=U(:,1:k)*S(1:k,1:k)*V(:,1:k)';
figure();
imagesc(Aapproxk); colormap(gray)
info=k*(1+m+n)