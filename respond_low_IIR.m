function exe3_1()
wplp=0.1*pi;
wslp=0.5*pi;
wphp=0.8*pi;
Rp=1;
As=4;
wp=2*tan(wplp/2);        
ws=2*tan(wslp/2);
ep=sqrt(10^(Rp/10)-1);      
Ripple=sqrt(1/(1+ep*ep));   
Attn=1/(10^(As/20));           
[N,wn]=buttord(wp,ws,Rp,As,'s')     
[z,p,k]=buttap(N);        
[bp,ap]=zp2tf(z,p,k)                    
[bs,as]=lp2lp(bp,ap,wplp)       
[bz,az]=bilinear(bs,as,1)                   
[H,w]=freqz(bz,az,64,'whole');
H= (H(1:1:33))';w= (w(1:1:33))';       
maglp=abs(H);                                
dblp=20*log10((maglp+eps)/max(maglp));   
phalp=angle(H);                             
grdlp=grpdelay(bz,az,w);             
t=0:0.01:1; 
rn=randn(1,length(t));rn(1:20)=0;
y=10*cos(2*pi*t)+10*cos(2*pi*t*2)+10*cos(3*pi*t*3)+rn;
ynlp=filter(bz,az,y)          
Fs=100;
N=40;n=0:N-1;
Yk64lp=fft(ynlp)/Fs;
figure(7)
k=0:length(Yk64lp)-1;f=k*N/pi/Fs;
subplot(2,1,1);stem(f/pi,abs(Yk64lp),'.');
axis([0,1.6,0,15]);xlabel('Frequency( pi )');ylabel('Magnitude');
subplot(2,1,2);stem(f/pi,angle(Yk64lp),'k.');
axis([0,1.6,-4,4]);xlabel('Frequency( pi )');ylabel('Phase');