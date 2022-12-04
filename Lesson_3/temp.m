clc
clear all
V0=12; C=45e-6; R=1800; f=60;
Tf=70e-3; w=2*pi*f;
clear t VR Vs
t=0:0.05e-3:Tf;
n=length(t);
state='on'
for i=1:n
 Vs(i)=V0*sin(w*t(i));
 switch state
 case 'on'
 VR(i)=Vs(i);
 iR=Vs(i)/R;
 iC=w*C*V0*cos(w*t(i));
 sumI=iR+iC;
 if sumI <= 0
 state='off ';
 tA=t(i);
 end
 case 'off '
 VR(i)=V0*sin(w*tA)*exp(-(t(i)-tA)/(R*C));
 if Vs(i) >= VR(i)
 state='on';
 end
 end
end
plot(t,Vs,':',t,VR,'k','linewidth',1)
xlabel('Time (s)'); ylabel('Voltage (V)')