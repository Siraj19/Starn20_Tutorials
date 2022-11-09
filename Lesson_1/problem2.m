clc
%To clear command window
clear all
%To clear previously created variables

%Problem 1
%Chapter 6
%Sample Problem 6-8
%Creating a Matrix with loop
%{
Problem statement:
Write a program in a script file that 

Breaking down statement into substatement
(1) A vector is given by x = [–3.5 –5 6.2 11 0 8.1 –9 0 3 –1 3 2.5].
(2) (2.1) Using conditional statements and loops, (2.2) write a program that creates two vectors
from x—one (call it P) that contains the positive elements of x, and a second
(call it N) that contains the negative elements of x.
(3) In both P and N, the elements are in the same order as in x.
%}

x = [-3.5 -5 6.2 11 0 8.1 -9 0 3 -1 3 2.5]
% Making a vector that contains elements as told in the question

elements_count = length(x)
%Just to see the size of x vector that how many elements are present in it

% Declaring blank 1D vector or matrix of negative and positve elemements

positives = [];
negatives = [];
% Substatement(2.2) is covered 

% Let's keep a count of positive and negative numbers so we can place them
% by one by one next to each other in sequence

positives_count = 0;
negatives_count = 0;

for index = 1:elements_count
    %from first element till maximum element count
    if x(index) > 0
        %if indexth element in x is greater than zero
        %congrats you have found a positive number and you can add to your
        %positive number count by one and place that on postive_count index
        %in the matrix positives
        positives_count = positives_count + 1;
        positives(positives_count) = x(index);
        
    elseif x(index) < 0
        %if indexth element in x is less than zero
        %congrats you have found a negative number and you can add to your
        %negative number count by one and place that on negative_count index
        %in the matrix negatives
        negatives_count = negatives_count + 1;
        negatives(negatives_count) = x(index);
    end
end

% Substatement(2.1) and 3 are covered 

positives
negatives

