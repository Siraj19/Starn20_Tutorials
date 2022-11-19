clc
clear all

syms x

%f= x*sin(x)
%g=int(f,x)
%h=diff(f,x)

%output=vpa(subs(f,x,90))
%a = 90.5

output_test = findMaxHeightAndPlotTrajectory(230, 39, 0:0.01:30)
