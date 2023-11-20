function exe1_3()
dalt=0.01;  
t=0:0.01:1; 
rn=randn(1,length(t));rn(1:20)=0;
y = 10*cos(2*pi*t)+10*cos(2*pi*t*2)+10*cos(2*pi*t*3)+rn;
Yk32=fft(y,32);
k=0:31;wk=2*k/32;
subplot(2,2,1);stem(wk,abs(Yk32),'.');
title('Magnitude(32 samples)');xlabel('ω/π');ylabel('magnitude');
subplot(2,2,3);stem(wk,angle(Yk32),'.');
title('Phase(32 samples)');xlabel('ω/π');ylabel('phase');axis([0,2.1,-4,4])
Yk64=fft(y,64);
k=0:63;wk=2*k/64;
subplot(2,2,2);stem(wk,abs(Yk64),'.');
title('Magnitude(64 samples)');xlabel('ω/π');ylabel('magnitude');
subplot(2,2,4);stem(wk,angle(Yk64),'.');
title('Phase(64 samples)');xlabel('ω/π');ylabel('phase');axis([0,2.1,-4,4])