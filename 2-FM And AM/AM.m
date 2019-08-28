%Aim: to generate Amplitude modulated wave
% Amplitude of carrier changes with amplitude of message signal

%Let's take the message and carrier frequency input from the user
fc=input('Input carrier frequency(fc): ')
fm=input('Input message signal frequency(fm): ')
Ac=input('Input amplitude of carrier signal(Ac): ')
m=input('Input Modulation Index(m)')

%Defining x-axis values
%Let's see 2 cycles of message signal
t=0:1/10000:2/fm;
%Let AM signal be y
y=Ac*(1+m*cos(2*pi*fm*t)).*cos(2*pi*fc*t);

figure
plot(t,y)
xlabel('Time')
ylabel('Amplitude')
title('AM Signal')
