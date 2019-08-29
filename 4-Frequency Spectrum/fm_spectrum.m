%Aim: To plot frequency spectrum of FM wave
clc
fc=50;
fm=10;
B=1;
fs = 1000; %sampling frequency
t=0:1/1000:1;

y=Ac*cos(2*pi*fc*t + B*sin(2*pi*fm*t)); %FM signal
%Spectrum using fast fourier transform
y1=fft(y);
y2=abs(y1);
y3=fftshift(y2);

f = -fs/2:fs/2;%frequency for x-axis values

plot(f,y3)
%Do labeling as required