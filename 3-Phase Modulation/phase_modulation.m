%Aim: To plot a pulsewidth modulated signal
%Width of pulse is changed with the amplitude of message signal

clc
clear all;
fm=10;
fc=50;
t=0:1/1000:2/10;
%For pulsewidth if message signal amplitude > carrier amplutude
%then we can choose a +ve value, say +2 else a -ve value say, -2

y1=0.5*sin(2*pi*fm*t); %message signal
pkg load signal %sawtooth is defined in signal module
y2=sawtooth(2*pi*fc*t); %carrier signal
for i=1:length(y1)
  if y1(i)>y2(i)
    y3(i)=2;
  else
    y3(i)=-2;
  end;
end;

%Let's plot all three lines in a single figure
plot(t,y1,t,y2,t,y3)