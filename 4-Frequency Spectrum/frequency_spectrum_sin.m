%Aim: To find the frequncy Spectrum of sin wave

f=10;
fs=1000; %Sampling frequency
t=0:1/1000:1;

y = sin(2*pi*f*t);
y1 = fft(y);
y2 = abs(y1);
y3 = fftshift(y2);

f=-fs/2:fs/2;
plot(f,y3)