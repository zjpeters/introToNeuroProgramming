# Basics of matlab programming
## Terminology of scripts, functions, and programs
- We typically think of our code in terms of programs, scripts, and functions, though the difference these terms can seem confusing when first starting
- A script is typically a single file that contains code that is intended to be run as a single file
    - This can range from something as simple as the code below displaying the sum of two numbers, to complicated analysis pipelines:
    ```Matlab
    x = 5
    y = 3
    z = x + y
    stringToPrint = sprintf("The sum of x and y is: %d", z)
    disp(stringToPrint)
    ```
- Functions, also often called commands, are a type of code that are written to perform a certain task, i.e. a function that takes a set of numbers and calculates the mean value
    - These functions can either be installed on your machine already as part of matlab or created by the user to be used in further scripts
    - functions have the following formatting within matlab:
    ```Matlab
    function m = fibonacci(n)
    if n == 0
        m = 0;
    elseif n == 1
        m = 1;
    else
        m = fibonacci(n-1) + fibonacci(n - 2);
    end
    end
    ```
    - When working in matlab, it's important to note that the file containing the function must be saved with the same name as given in the first line function file, i.e. for the function above it must be saved as `fibonacci.m`
- A program is typically a set of code that is executable by your system, and is not usually edited by the end user. 
    - These are often made up of a combination of smaller scripts and functions, think of something like your web browser or Microsoft Office, that has lots of different components to create the program
## The command window
- The command window is the part of the matlab window that will display the results of running our commands
- We can work directly in the command window, typing functions and viewing the results, however these commands won't be saved anywhere and will need to be re-run the next time we open matlab
- A useful command to clear the contents of the command window is `clc`. This will remove the text in the command window, but won't affect your workspace or open figures.
## The workspace window
- The workspace will display all variables that have been generated during a particulat matlab session, as well as their datatype and size
- If you have generated a lot of variables throughout your matlab session you can delete unused variables by selecting the variable and pressing `delete`, right clicking and selecting `delete`, or typing `clear variableName`
- You can also type `clear` without any variable names in order to clear the entire workspace, this is commonly done when starting a new session, often along with `clc`, like so:
    ```Matlab
    clear; clc;
    ```
## Current folder window
- This window shows the content of the window you are currently working inside of
## Variables
- Variables are assigned by typing a variable name followed by a single `=` and the value you would like to assign to the variable
- Variables come in many types, including unsigned integers (0,1,2,3), floating point numbers (0.0, 3.14, 10.2), signed integers (-3,-2,-1,0,1,2,3), strings of text('hello world'), and more
## Data types
- `int8`, `int16` - a signed integer of either 8 or 16 bits in size. This can be any integer number of positive or negative value
- `uint8`, `uint16` - an unsigned integer of either 8 or 16 bits in size. Can only be positive, assigning a negative value to an unsigned integer will give you an incorrect value
- `double` - a double precision floating point number. This can be any floating point (decimal point) number within the 16 bit size range
- `string` - a data type for text data, can contain a combination of letters and numbers contained within quotation marks (""). Any numbers inside of quotation marks will be read as text, not as numeric.
- You can find [more information about datatypes here](https://www.mathworks.com/help/matlab/data-types.html)
## Comments
- All programming languages use comments to separate explanatory text from code. In matlab this is done using the percent symbol (%), for instance:
```Matlab
% This comment will not be interpreted
```
- Additionally, you can separate the code within your scripts into sections by using two percent symbols (%%)
```Matlab
% This is a comment
x = 10
%% This is a comment that separates the code into sections
```
- Comments are good for explaining your code to anyone who might be reading it and should be used liberally
## Paths
- Once you start working with data outside of matlab, you will often have to use paths to tell matlab where things are stored
- Different computer operating systems describe paths differently. For example, Linux and Mac typically use the forward slash (/) to separate folders, while Windows using the backslash (\)
- To make your code easier to use across multiple systems, it is recommended to use the `fullfile` command as follows:
```Matlab
% one way to describe a folder location on a linux system
folderName = "/home/username/Documents/myFile.txt"
% a more compatible way to write the same folder location
folderName = fullfile("/","home","username","Documents","myFile.txt")
```
## Using the semicolon
- In matlab, the semicolon (;) suppresses code from printing to the command window
- This becomes more useful as your code becomes more complicated and you have lines of code that you don't need to have printed to the screen. To update the code from the beginning of this file to be cleaner, we could add semicolons to our first few lines so they don't print to the screen:
```Matlab
    x = 5;
    y = 3;
    z = x + y;
    stringToPrint = sprintf("The sum of x and y is: %d", z);
    disp(stringToPrint)
```
## Integrated Development Environments (IDE)
- An IDE is a text editor program with dedicated functions for running and debugging various programming languages
- Matlab is a fully contained programming language, which means that the program itself acts as an IDE as well as the interpreter, while in other languages such as Python or C++, you might write your code in an IDE and then compile and run your code in a separate program

## for loop

## if statement

## Arrays, matrices, cells, tables, etc.
## Command glossary
- `clc` - clears the command window
- `clear` - clears the workspace
- `fullfile` - converts a string of folder names into a working path location
## Helpful command line keyboard shortcuts
- `ctrl+alt+t` - open a new terminal window
- `ctrl+shift+c` - copy selection, the equivalent to `ctrl+c` in most programs
- `ctrl+shift+v` - paste selection, the equivalent to `ctrl+v` in most programs
- `home` - brings cursor to beginning of current line
- `end` - brings cursor to end of current line
- `ctrl+left arrow` - shifts cursor one word/term left
- `ctrl+right arrow` - shifts cursor one word/term right
- `=` - sets a variable equal to some value, i.e. `x=1` or `x='some string of text'`
- `==` - indicates equivalence for two values, i.e. `if [ x == 1 ]; then do echo "true"; done`