%Bandpass filter, with f1=100Hz,f2=200Hz,f3=300Hz,f4=400Hz,Fs=1500
%alpha_p = 3db, alpha_s=15dB

fs = [100,500];
fp = [200,400];
Fs=1500;
ap=3;
as=15;
nfs = 2*fs/Fs;
nfp = 2*fp/Fs;
[n, nf] = buttord(nfp,nfs,ap,as);
[b, a] = butter(n, nf, 'bandpass');
[h, f] = freqz(b,a,512,Fs);
y = abs(h);
plot(f,y);
title('Band pass filter')