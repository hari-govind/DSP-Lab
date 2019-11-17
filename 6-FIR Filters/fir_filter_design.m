% Design an FIR filter with N=60 and cutoff-requency, wc = pi/2
% General Steps:
%1. Define alpha as a=(N-1)/2 and n as 0:1:N-1
%2. Define sinc function as hn=(sin(wc*(n-a)))./(pi*(n-a)
%3. Defined window function(rectangular, hanning or hamming) as wn
%4. Multiply elementwise hn with wn
%5. Define w=0:0.01:pi since freqz evaluates response form 0 to pi
%6. Get fir response using freqz inbuit function
%7. Plot w vs absolute value of respose got from freqz function
N = 60;
a = (N-1)/2; %alpha
n = 0:1:N-1;
wc = pi/2;
hn = (sin(wc*(n-a)))./(pi*(n-a)); %Sinc function
wn = ones(1,N)  %A rectangular window
hd = hn.*wn;
w = 0:0.01:pi;
[h, k] = freqz(hd,1, w); %To get FIR resoponse from 0:pi
ha = abs(h);
plot(w,ha);
title('Rectangular Window')

% With hanning window

wn = hanning(N); %Returns filter coefficients of hanning window of length N
hd = hn.*wn'; %Transpose is requred as hanning function returns a column vector
w = 0:0.01:pi;
[h, k] = freqz(hd,1,w);
ha = abs(h);
figure
plot(w,ha);
title('Hanning Window')

% With hamming window

wn = hamming(N)
hd = hn.*wn';
w = 0:0.01:pi;
[h, k] = freqz(hd,1,w);
ha = abs(h);
figure
plot(w,ha);
title('Hamming Window');
