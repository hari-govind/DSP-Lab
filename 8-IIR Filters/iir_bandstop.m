%Aim: Design a bandstop filter with fp1=0.1 fp2=0.4 fs1=0.2,fs2=0.3,Fs=1

ap=3;
as=15;
Fs=1;

fp = [0.1,0.4];
fs = [0.2,0.3];

nfp = 2*fp/Fs;
nfs = 2*fs/Fs;

[n, nf] = buttord(nfp, nfs, ap,as);
[b, a] = butter(n,nf,'stop');
[h, f] = freqz(b,a,512,Fs);

y = abs(h);

plot(f,y);
title('Bandstop filter')