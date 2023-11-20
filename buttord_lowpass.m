function exe2_1()
%some index for the filter to the signal
wplp=0.1*pi;
wslp=0.5*pi;
wphp=0.8*pi;
Rp=1;
As=4;

wp=2*tan(wplp/2);                       %T=1；
ws=2*tan(wslp/2);
ep=sqrt(10^(Rp/10)-1);                  %Passband fluctuation parameter ε
Ripple=sqrt(1/(1+ep*ep));               %Minimum passband amplitude
Attn=1/(10^(As/20));                    %Maximum ripple of stopband

[N,wn]=buttord(wp,ws,Rp,As,'s')         %Calculation of order and cutoff frequency of simulated Butterworth filter

[z,p,k]=buttap(N);                      %The zeros and poles of the simulated prototype low-pass filter system function are designed
[bp,ap]=zp2tf(z,p,k)   
[bs,as]=lp2lp(bp,ap,wplp)               %The analog low-pass prototype filter is converted to the actual low-pass filter

[bz,az]=bilinear(bs,as,1)               %use the bilinear transformation to change into a digital IIR filter
[H,w]=freqz(bz,az,64,'whole');
H= (H(1:1:33))';w= (w(1:1:33))'; 
maglp=abs(H);                           %to calculate the magnituded 
dblp=20*log10((maglp+eps)/max(maglp));  %change into dB
phalp=angle(H);                         %calcuate the phase
grdlp=grpdelay(bz,az,w);                %calculate the groupdelay

figure(3);subplot(1,1,1)

subplot(2,2,3);plot(w/pi,dblp);title('dB');
xlabel('Frequency( pi )');ylabel('( dB )');axis([0,1,-50,5]);
set(gca,'XTickMode','manual','Xtick',[0,0.2,0.3,1]);  
set(gca,'YTickMode','manual','Ytick',[-40,-15,0,5]);grid 
subplot(2,2,[1 2]);plot(w/pi,phalp/pi,'k');title('Phase');
ylabel('（ pi ）');axis([0,1,-1,1]);
set(gca,'XTickMode','manual','Xtick',[0,0.2,0.3,1]);  
set(gca,'YTickMode','manual','Ytick',[-1,0,1]);grid 
subplot(2,2,4);plot(w/pi,grdlp,'k');title('Group delay');
xlabel('Frequency( pi )');ylabel('Sample');axis([0,1,0,10])
set(gca,'XTickMode','manual','Xtick',[0,0.2,0.3,1]);   
set(gca,'YTickMode','manual','Ytick',[0:2:10]);grid