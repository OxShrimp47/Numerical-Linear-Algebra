%Name:Tommy Lee Truong
% Last Edit:Mar 18 2021
% Program Name: HW 6
clc; clear all; close all;
% for pen and paper problems see pdf scan
%% Q1
%a)the data composes the data points into a 4x2 matrix with each row
%representing a point
data =[-1,0;0,0;0,1;1,1]
%the comand data(:,1) reads in all values of the 1strow of the data matrix,
%data(:,2) is the same but for the second row. Overal the following
%commands serve to separate the 4x2 matrix 'data' into an x and y vector.
xvec=data(:,1)
yvec=data(:,2)
%b)
W=[xvec,ones(size(xvec))]
%c)using the normal system, an avec can be derived that ensures a solution
%and thus optimizing the avec
avec=inv(W.'*W)*W.'*yvec
%d)
x=linspace(-2,2);
y =avec(1).*x+avec(2);
plot(x,y)
title('Q1 Linear Regression and Data')
hold on
plot(xvec,yvec,'r*')
legend('Linear Regression','Data Points')
hold off
%e) Note that the squared error is the diffence between the actual and
%theoretical of each point squared all summed together. The norm of p=1 is
%the sum of all points in avector and thus can be a used as a short hand to
%find the sum of the points in the resulting matrix  (yvec-W*avec)^2
E=norm(yvec-W*avec)^2
%% Q2
clc; clear all; close all;
fexact = @(x) x^3 -x^2 +2*x +0.5
xvec=3*rand(100,1)-1
yvec=arrayfun(fexact,xvec)+0.3*randn(size(xvec))
%a)
plot(xvec,yvec,'r*')
title('Q2 Data')
%b)
W=[xvec,ones(size(xvec))]
%c)
avec=inv(W.'*W)*W.'*yvec
%d) 
x=linspace(-2,2);
y =avec(1).*x+avec(2);
plot(x,y)
title('Q2 Linear Regression and Data')
hold on
plot(xvec,yvec,'r*')
legend('Linear Regression','Data Points')
hold off




