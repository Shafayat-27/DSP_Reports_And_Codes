clc;
clear all;
close all;
	 
t=-10:1:10;
s1= t>=0 & t<=5;
s2= t>=2 & t<=7;
 
subplot(4,1,1);
stem(t,s1);
xlabel('Time');
ylabel('Amplitude');
title('Signal 1');
 
subplot(4,1,2);
stem(t,s2);
xlabel('Time');
ylabel('Amplitude');
title('Signal 2');
 
step3 = s1+s2
subplot(4,1,3);
stem(t,step3);
xlabel('Time');
ylabel('Amplitude');
title('Addition');
 
step4 = s1-s2
subplot(4,1,4);
stem(t,step4);
xlabel('Time');
ylabel('Amplitude');
title('Subtraction');

