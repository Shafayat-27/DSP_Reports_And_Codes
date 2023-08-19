clc;
clear all;
close all;

t=-10:0.001:10;
step= t>= 0;
impulse= t==0;
ramp= (t>=0).*t;

subplot(3,1,1);
plot(t,step);
xlabel('Time');
ylabel('Amplitude');
title('Unit step');

subplot(3,1,2);
plot(t,impulse);
xlabel('Time');
ylabel('Amplitude');
title('Unit Impluse');

subplot(3,1,3);
plot(t,ramp);
xlabel('Time');
ylabel('Amplitude');
title('Unit ramp');
