x=[-1 2 1];
h=fliplr(x);
C=x.'*h;
k=length(x);
l=length(h);
n=k+l-1;
for i=1:n
    y(i)=0;
    for j=1:k
        s=i-j;
        m=i-j+1;
       if(s<k && m>0)  
            y(i)=y(i)+C(m,j);
        end
    end
end
z=xcorr(x);
subplot(3,1,1);
stem(x);
title('Input Signal x(n)');
subplot(3,1,2);
stem(z);
title('Auto-correlation using function');
subplot(3,1,3);
stem(y);
title('Auto-correlation manually');
