% Program to calculate DFT of a sequence

clc
clear all

x = input('Input the sequence');
N = input('Input the length(N)');

%Let's generate the powers of tiddle factors for DFT matrix
% [0,1,2]'*[0,1,2] =[[0,0,0],[0,1,2],[0,2,4]] and so on
% So we need to multiply the length with transpose

t  = 0:1:(N-1);
k=t';
p=k*t; 

% Defining tiddle factors
W = exp(-(j*2*pi/N));
%Getting DFT matrix
dft_matrix = W.^p;
%Calculating DFT
dft_X = dft_matrix*x';
disp('DFT is: ')
dft_X %Show result

%% Calculating inverse DFT

W_inverse = exp(j*2*pi/N);
idft_matrix = W_inverse.^p;
idft_X = (1/N).*idft_matrix*dft_X; %IDFT or previously calculated DFT
disp('IDFT is:')
idft_X