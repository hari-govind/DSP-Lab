%Aim:  To find the frequncy spectrum of AM wave

fm=10
fc=50
fs=1000
Ac=1
m=1

t=0:1/1000:1

y=Ac*(1+m*cos(2*pi*fm*t)).*cos(2*pi*fc*t); %AM signal
%Spectrum using fast fourier transform
y1=fft(y)
y2=abs(y1)
y3=fftshift(y2)

f=-fs/2:fs/2 %frequency for x-axis values

plot(f,y3)
%Add title and axis labeling as required