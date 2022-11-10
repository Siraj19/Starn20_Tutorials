clc
clear all

n=input('Enter the number of rows ');
%n is a variable that takes user input via command window
%n defines the number of rows
m=input('Enter the number of columns ');
%m is a variable that takes user input via command window
%m defines the number of columns
% Substatement(5) is covered

A=zeros(n,m);

for row = 1:1:n
   for column = 1:1:m
       if row == 1
           A(row,column)=column;
       elseif column == 1
           A(row,column)=row;
       else
           A(row,column)=A(row,column-1)+A(row-1,column);
       end
   end
   end
A
   