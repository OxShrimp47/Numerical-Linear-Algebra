% Name:Tommy Lee Truong
% Last Edit:Feb 23 2021
% Program Name: HW 4
clc; clear all; close all;
% for pen and paper problems see pdf scan
%% Q2 test
A=[ones(1,3);ones(1,2),0;1,zeros(1,2)];
%inverse should be [001;01-1;1-1-1]
x=my_inv(A)
