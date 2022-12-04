clc
clear all

vnod = 12;
vcapacitor = 0;
frequency = 60;
omega = 2*pi*frequency;
capacitor = 45*(10^(-6));
resistor = 1800;
delta_t = 0.00001;
time_frame = 0:delta_t:70*(10^(-3));
n = 1:length(time_frame);

vsource = vnod*sin(omega*time_frame);
vresistor = zeros(1,length(time_frame));
vpoint = ((vsource-0.7).*double(vsource>0.7));

for i = 2:length(time_frame)
    if(vpoint(i)>=vcapacitor)
        vcapacitor = vpoint(i);
    else
        vcapacitor = vcapacitor*exp(-(delta_t/(resistor*capacitor)));
    end
    vresistor(i) = vcapacitor;
end
plot(time_frame,vresistor,'black')
hold on
plot(time_frame,vsource,'--r')
hold on
plot(time_frame,vpoint,'--b')