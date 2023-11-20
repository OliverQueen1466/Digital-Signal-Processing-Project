function exe3_2()
figure(9)
t=0:0.01:1; 
rn=randn(1,length(t));rn(1:20)=0;
y=10*cos(2*pi*t)+10*cos(2*pi*t*2)+10*cos(3*pi*t*3)+rn;
Y1=fft(y);
fp=4;fc=16;As=4;Ap=1;Fs=100;
wc=2*pi*fc/Fs; wp=2*pi*fp/Fs;
wdel=wc-wp;
beta=0.112*(As-1);
N=ceil((As-0.5)/2.285/wdel);
wn= kaiser(N+1,beta); 
ws=(wp+wc)/2/pi;
b=fir1(N,ws,wn);
freqz(b,1);
x=fftfilt(b,y);
X=fft(x);
subplot(2,2,1);plot(abs(Y1));
title('Magnitude before filter');
subplot(2,2,2);plot(abs(X));
title('Magnitude after filter');
subplot(2,2,3);plot(y);
title('Waveform before filter');
subplot(2,2,4);plot(x);
title('Waveform after filter');