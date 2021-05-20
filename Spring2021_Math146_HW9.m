% Name:Tommy Lee Truong
% Last Edit:Apr 15 2021
% Program Name: HW 9
clc; clear all; close all;
%% Q1
%define u
u1=[2;2;1];
u2=[1;-2;2];
u3=[-2;1;2];
%define v
v1=u1/norm(u1,2);
v2=u2/norm(u2,2);
v3=u3/norm(u3,2);
%compute p
p=[v1,v2,v3]
p*transpose(p)
%% Q2
A=[0,-1,0;1,0,0;0,0,1]
inv(A)
%% Q3
%define v
v1=[sqrt(3)/2;1/2];
v2=[-1/2;sqrt(3)/2];
%define w
w=[1;2];
%compute alpha
p=[v1,v2];
alpha=inv(p)*w