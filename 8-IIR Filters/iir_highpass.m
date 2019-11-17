%Aim: Design a highpass butterworth filter with ap=3dB, as=15dB, fp=0.2Hz, fs=0.3Hz
% and Fs=1Hz

%Design is similar to lowpass, but 'high' parameter is passed to butter function

fp=0.2;
fs=0.3;
ap=3;
as=15;
nfp=2*fp/Fs;
nfs=2*fs/Fs;
[n, nf] = buttord(nfp,nfs,ap,as);
[b, a] = butter(n, nf, 'high');
[h, f] = freqz(b,a,512,Fs);
y = abs(h);
plot(f,y);
title('Low pass filter')