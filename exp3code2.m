x=[-3 2 -1 1];
w=[-1 0 -3 2];
h=fliplr(w);
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
z=xcorr(x,w);
subplot(4,1,1);
stem(x);
title('First input Signal x(n)');
subplot(4,1,2);
stem(w);
title('Second input Signal w(n)');
subplot(4,1,3);
stem(z);
title('Cross-correlation using function');
subplot(4,1,4);
stem(y);
title('Cross-correlation manually');
