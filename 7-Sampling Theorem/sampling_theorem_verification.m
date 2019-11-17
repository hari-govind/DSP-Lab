% To verify Sampling Theorem
% Sampling Theorem: fs >= 2fm

%% Let's define a 2Hz sine wave
f = 2; %i.e fm = 2Hz
t = 0:1/1000:5/f; %5 cycles to be shown

fs1 = 4; %i.e fs = 2fm
t1 = 0:1/fs1:5/f;
fs2 = 25; %i.e fs > 2fm
t2 = 0:1/fs2:5/f;
fs3 = 3; %i.e fs<2fm
t3 = 0:1/fs3:5/f;

%Let's plot the sine wave sampled at each of those frequencies using subplot
%% Defining amplitude values
y = sin(2*pi*f*t); %Original sine wave
y1 = sin(2*pi*f*t1);
y2 = sin(2*pi*f*t2);
y3 = sin(2*pi*f*t3);
%%Plotting
subplot(411)
plot(t,y)
title('Sine Wave with f=2Hz')
subplot(412)
plot(t1,y1)
hold on
stem(t1,y1)
title('fs = 4')
subplot(413)
plot(t2,y2)
hold on
stem(t2,y2)
title('fs = 25')
subplot(414)
plot(t3,y3)
hold on
stem(t3,y3)
title('fs = 3')
