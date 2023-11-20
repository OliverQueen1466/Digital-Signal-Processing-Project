function exe1_1()
dalt=0.01; 
t=0:0.01:1; 
rn=randn(1,length(t));rn(1:20)=0;
figure(1)
y1=10*cos(2*pi*t)+10*cos(2*pi*t*2)+10*cos(2*pi*t*3);
plot(t,y1)
hold on 
y = 10*cos(2*pi*t)+10*cos(2*pi*t*2)+10*cos(2*pi*t*3)+rn;
plot(t,y)
xlabel('Time');ylabel('Amplitude')