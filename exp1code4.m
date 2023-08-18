clc;
clear all;
close all;
 
t=0:1:7;
u = [ones(1,1).*1 ones(1,2).*2 ones(1,1).*5 ones(1,1).*5 ones(1,2).*2 ones(1,1)];
subplot(2,1,1);
plot(t,u);
xlabel('Time');
ylabel('Amplitude');
title('Signal 1');
 
t=0:1:6;
u1 = [zeros(1,1) ones(1,5) zeros(1,1)];
subplot(2,1,2);
plot(t,u1);
xlabel('Time');
ylabel('Amplitude');
title('Signal 2');