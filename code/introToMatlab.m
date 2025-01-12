%% A basic set of commands to add together two numbers and display the result
% x, y, & z are called variables. We assign value to a variable using a
% single equal sign (=)
x = 5
y = 3
z = x + y
% the sprintf function formats a string
stringToPrint = sprintf("The sum of x and y is: %d", z)
disp(stringToPrint)
%% Using clc
% typing clc clears the command window but not the workspace
clc
disp(stringToPrint)

%% Using semicolons to clean up the display, clear to clear workspace
clear; clc
x = 5;
y = 3;
z = x + y;
% the sprintf function formats a string
stringToPrint = sprintf("The sum of x and y is: %d", z);
disp(stringToPrint)

%% arrays and matrices
testArray = [1,1, 2, 3, 5, 8];

testMatrix = [[1,1,2,3,5,8];
                   [13, 21, 34, 55, 89, 144]];
testMatrix(1,3)