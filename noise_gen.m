

function exe1_2()
figure(1)
dalt=0.01;  
t=0:0.01:1; 
rn=randn(1,length(t));rn(1:20)=0;
y=10*cos(2*pi*t)+10*cos(2*pi*t*2)+10*cos(2*pi*t*3)+rn;
subplot(2,1,1);plot(t,y);
title('Test signal');
xlabel('time');ylabel('amplitude');
subplot(2,1,2);stem(t,y,'.');
title('Signal sample');
xlabel('time');ylabel('amplitude');
end