%Aim: Generation of Frequency Modulated signal
% Equation is Acos(2*pi*f*t + Bsin(2*pi*f*t))
% Frequency of carrier signal changes with amplitude of message signal

%Let's take the message and carrier frequency input from the user
fc=input('Input carrier frequency(fc): ')
fm=input('Input message signal frequency(fm): ')
Ac=input('Input amplitude of carrier signal(Ac): ')
B=input('Input Modulation Index(Beta)')

%Defining x-axis values
%Let's see 10 cycles of message signal
t=0:1/10000:10/fm;
%Let y be message signal
y = sin(2*pi*fm*t);
%Let y1 be the carrier signal
y1 = Ac*cos(2*pi*fc*t);
%Let FM signal be y2
y2=Ac*cos(2*pi*fc*t + B*sin(2*pi*fm*t));

%Let's show all three signals in a single figure using subplot

figure
subplot(3,1,1) %3 rows and 1 columns
plot(t,y)
xlabel('Time')
ylabel('Amplitude')
title('Message signal')
subplot(3,1,2) 
plot(t,y1)
xlabel('Time')
ylabel('Amplitude')
title('Carrier signal')
subplot(3,1,3) 
plot(t,y2)
xlabel('Time')
ylabel('Amplitude')
title('Frequency Modulted Signal')