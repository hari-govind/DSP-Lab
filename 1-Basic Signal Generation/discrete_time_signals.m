%Aim: To generate discrete time step, square and ramp waveforms

clc %clear the output

%Generation of unit step function
%Generation of discrete time is same as continuous time except
%we use stem() instead of plot() and step size is increased

n = 0:1:5 % x values are 0,1,2,3,4,5
y = ones(1,6)
figure
stem(n,y)
xlabel('time')
ylabel('amplitude')
title('Unit step function')

%Generation of square waveform with frequency 10Hz
%Let's generate 2 cycles

t = 0:1/100:2/10 %step size is 1/100 so we get 100 value points in total
f = 10
pkg load signal %For loading square in octave, not needed in matlab
y = square(2*pi*f*t)
figure
stem(t,y)
xlabel('time')
ylabel('amplitude')
title('Discrete Square')

%Generation of discrete ramp

t = 0:1:5
y = t
figure
stem(t,y)
xlabel('time')
ylabel('amplitude')
title('Discrete Ramp')