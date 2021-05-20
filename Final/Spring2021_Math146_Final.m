% Name:Tommy Lee Truong
% Last Edit:May 13 2021
% Program Name: Final
clc; clear all; close all;
%% 1
%b
A=[1,0,2,3;
    -1,2,2,3;
    0,1,1,2;
    3,1,1,2]
[L,U,P]=lu(A)
%% 2
%b
data=[-0.73,0.07;
    1.80,-0.24;
    -1.86,0.14;
    -0.25,0.99;
    -0.47,0.69;
    1.06,-0.71;
    1.18,-0.81;
    -1.25,-1.03]
xvec=data(:,1);
yvec=data(:,2);
V=[xvec.^4,xvec.^3,xvec.^2,xvec,ones(size(xvec))]
avec=inv(transpose(V)*V)*transpose(V)*yvec
x=linspace(-2,2);
y=polyval(avec,x);
%c
plot(x,y)
title('Q2c Best Fit Least Square Solution')
hold on
plot(xvec,yvec,'r*')
legend('Best Fit Line','Data Points')
hold off
%d
e=yvec-V*avec;
E=(norm(e,2)).^2
%% 5
%c
a8=5.^8+3.*(2.^8)
%% 6
%a
A=imread('black-hole.tif');
imagesc(A);
%b
A=double(A);
[U,S,V]=svd(A);
r=rank(A)
sigmavals = diag(S);
figure();
scatter(1:r,sigmavals,'.')
title('Q6b Singular vs Mode')
xlabel('i')
ylabel('sigma_i')
%c
A10=U(:,1:10)*S(1:10,1:10)*V(:,1:10)';
figure();
imagesc(A10);
title('A10')
A50=U(:,1:50)*S(1:50,1:50)*V(:,1:50)';
figure();
imagesc(A50);
title('A50')