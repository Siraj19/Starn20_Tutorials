clc
%To clear command window
clear all
%To clear previously created variables

%Problem 1
%Chapter 6
%Problem 1
%Page 212
%{
Problem statement:
Write a program in a script file that 

(1) A vector is given by x = [–3.5 5 –6.2 11.1 0 7 –9.5 2 15 –1 3 2.5]. 
(2) Using conditional statements and loops, write a program that rearranges the elements of x in order from the smallest to the largest. Do not use MATLAB’s
built-in function sort.
%}

x = [-3.5 -5 6.2 11 0 8.1 -9 0 3 -1 3 2.5]
% Making a vector that contains elements as told in the question

%Implementing Bubble sort Algorithm to sort number in ascending order
for i = 1:length(x)
   for j = 1:length(x)
      if (x(i)<x(j)) 
         swap = x(i);
         x(i) = x(j);
         x(j) = swap;
      end
   end
end

x