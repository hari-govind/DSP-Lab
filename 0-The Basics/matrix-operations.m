% Comments in Octave start with %
% Aim: To familiarize different matrix operations in Octave


clc %clears command window

% Variable assignment
a = 5; %use semicolon(;) to supress output
b = 7;
c = a+b; %add a and b
c %If no semiconlon is used, value of the variable
  %is printed in the output
 
% Defining matrices
% 1.Enclose matrices in square brackets.
% 2.Enter row elements separated by whitespace.
% 3.Use ; to separate the rows

a = [1 2 3; 4 5 6; 7 8 9]

% Accessing matrix elements
%% Note: indexing in Octave starts with 1

%% Accessing a single element
%% Syntax a(row,column) 

a(1,2) %Get element at location 1st row and 2nd column

%% Accessing multiple elements
%% Use colon(:) to get multiple elements

%%Let's see some examples:

a(1,:) %Get elements at 1st row all columns
a(:,1) %Get elements at all rows 1st column
a(1:2,1:2) %Get elemensts at 1 to 2 rows and 1 to 2 columns

% Matrix Operations

% Define two matrices x and y

x = [1 2 4;5 6 7;2 4 1];
y = [1 1 4;7 3 4;4 2 1];

% Addition
c = x+y

% Subtraction
c = x-y

% Multiplication
% 1.Matrix Multiplication
c = x*y
% 2.Elementwise Multiplication - Multiply corresponding elements of two matrices
c = x.*y

% Transpose - Interchange rows and columns
c = x'

% Raising to a power
% 1.Normal matrix multiplication
c = x^2 %performs x*x
% 2.Elementwise
c = x.^2 %Squares each element in x

% Generating Special Matrices

% 1. Identity Matrix - Diagonal elements 1 and other elements 0
%% Syntax: eye(no. of rows,no. of columns)
a = eye(3,3) %Generates an identity matrix of 3 rows and 3 columns

% 2. All-ones matrix - Matrix with all elements as 1
%% Syntax: ones(no. of rows, no. of columns)

a = ones(2,1) %Generates ones matrix with 2 rows and 1 column

%% 3. Matrix with all value as a constant
%% We can generate a ones matrix and multiply it with a constant for this
%% E.g. for a 2X3 matrix with all values as 3 we can do:

a = 3*ones(2,3)