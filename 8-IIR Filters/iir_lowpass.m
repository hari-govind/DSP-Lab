%Aim: To design a butterworth low pass filter with following specification:
% alpha_p = 3dB, alpha_s=15dB, fp=0.2Hz,fs=0.3Hz,Fs=1Hz

%Declaring given variables:
ap = 3;
as = 15;
fp = 0.2;
fs = 0.3;
Fs = 1;
%Normalized frequencies:
nfp = 2*fp/Fs;
nfs = 2*fs/Fs;
%Let's get the required arder using buttord function
[n , nf] = buttord(nfp,nfs,ap,as);
%To get filter coeffs:
[b, a] = butter(n,nf);
[h, f] = freqz(b,a,512,Fs);
y = abs(h);
plot(f,y);
title('Low pass filter')
