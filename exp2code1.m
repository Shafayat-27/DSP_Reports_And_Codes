clc
clear all
t=0:1/100:1;
x=[1 2 3 4];
h=[4 4 3 2];
L=length(x);
M=length(h);
N=L+M-1;
for i=1:N
    y(i)=0;
    for j=1:L
        if ((i-j+1)>0 && (i-j)<4)
            y(i)=y(i)+x(j)*h(i-j+1);
            disp(y(i));
        end
    end
end
subplot(3,1,1);
stem(x);
title('Input Signal x(n)');
subplot(3,1,2);
stem(h);
title('Impulse Response h(n)');
subplot(3,1,3);
stem(y);
title('Convolution Result y(n)');
