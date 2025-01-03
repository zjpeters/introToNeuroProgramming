%% A basic set of commands to add together two numbers and display the result
% x, y, & z are called variables. We assign value to a variable using a
% single equal sign (=)
x = 5
y = 3
z = x + y
% the sprintf function formats a string
stringToPrint = sprintf("The sum of x and y is: %d", z)
disp(stringToPrint)
%% Using semicolons to clean up the display
clear; clc
x = 5;
y = 3;
z = x + y;
% the sprintf function formats a string
stringToPrint = sprintf("The sum of x and y is: %d", z);
disp(stringToPrint)