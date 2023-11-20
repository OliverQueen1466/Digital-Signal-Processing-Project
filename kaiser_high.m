function exe2_3()
t=0:0.01:1; 
rn=randn(1,length(t));rn(1:20)=0;
y=10*cos(2*pi*t)+10*cos(2*pi*t*2)+10*cos(3*pi*t*3)+rn;
Y1=fft(y);
fp=12;fc=15;As=100;Ap=1;Fs=100;
wc=2*pi*fc/Fs; wp=2*pi*fp/Fs;
wdel=wc-wp;
beta=0.112*(As-1);
N=ceil((As-0.8)/2.285/wdel);
ws=(wp+wc)/2/pi;
wn= kaiser(N,beta); 
b=fir1(N-1,ws,'high',wn);
figure(6);
freqz(b,1);
x=fftfilt(b,y);
X=fft(x);