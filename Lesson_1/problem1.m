clc
%To clear command window
clear all
%To clear previously created variables

%Problem 1
%Chapter 6
%Sample Problem 6-8
%Page 199
%Creating a Matrix with loop
%{
Problem statement:
Write a program in a script file that 

Breaking down statement into substatement

(1) Creates a matrix with elements that have the following values. 
(2)  The value of each element in the first row is the number
of the column. 
(3) The value of each element in the first column is the number of
the row. 
(4) The rest of the elements each has a value equal to the sum of the element
above it and the element to the left. 
(5) When executed, the program asks the user to
enter values for n and m.
%}

n=input('Enter the number of rows ');
%n is a variable that takes user input via command window
%n defines the number of rows
m=input('Enter the number of columns ');
%m is a variable that takes user input via command window
%m defines the number of columns
% Substatement(5) is covered

A=[];
%Create a blank matrix with undefine number of rows and columns
%Created it just to name it.
%Here, unlike C/C++ you do not need necessarily need to define a matrix 
%size to plug in values
% You can instead create a matrix with defined size of 0 value pre-written
% like that A = zeros(n,m)
% Substatement(1) is covered 

for k=1:n
% To understand what is happening inside it understand what does the
% statement mean
% k is an array with value 1:n (In this context it means [1 2 3 ..... n])
% Size of the above array is n, because k value goes from 1 till n
% Any piece of code inside of loop would repeat n times or till k show up
% all of its values inside the loop one by one

% Inside the loop, only value of k would change after each iteration
% You can think it like "This piece of code would repeat untill k would
% show all of its values"
    
 for h=1:m
 %Another loop inside it
 %This loop would run m times under parent loop which would run n times
 
 if k==1
     %If value of k comes one
     A(k,h)=h;
     %Assign first row elements value equal to their column number
     
     % Substatement(2) is covered 
     
 elseif h==1
     %If value of h comes one
     A(k,h)=k;
     %Assign first column elements value equal to their row number
     
     % Substatement(3) is covered 
     
 else
     A(k,h)=A(k,h-1)+A(k-1,h);
     % Assign kth row and hth element equal to 
     % Same kth rowth and left or (h-1)th element
     % Plus top or (k-1)th rowth and hth element
     
     % Substatement(4) is covered 
     
 end % Here it tells there are no more conditions
 
 end %Loop fullstop or explaination I gave below
 
end %This would tell parent loop ends here or anything outiside it is not part of a loop

%Wrote A just to print what is written insde it on the command window
A