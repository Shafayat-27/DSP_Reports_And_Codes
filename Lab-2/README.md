## Experiment Date : 30/04/23

## Experiment No : 02

## Experiment Name :

## Study of Linear Convolution.

---

## Theory :

<div align='justify'>
Linear convolution is a fundamental operation in digital signal processing (DSP) that is used to combine two discrete-time signals into a third signal that represents their convolution. It plays a key role in many DSP applications such as filtering, signal analysis, and image processing. Linear convolution is based on the convolution sum formula, which states that the output of linear convolution is obtained by summing the products of the input signals at each time index. In practical DSP applications, linear convolution is often performed using built-in functions provided by DSP software packages such as MATLAB and Python's NumPy library. These functions are optimized for efficiency and accuracy and can handle large input signals with high precision.

</div>

## Software Used:

> Matlab

## Code :

```matlab
1.	clc
2.	clear all
3.	t=0:1/100:1;
4.	x=[1 2 3 4];
5.	h=[4 4 3 2];
6.	L=length(x);
7.	M=length(h);
8.	N=L+M-1;
9.	for i=1:N
10.	    y(i)=0;
11.	    for j=1:L
12.	        if ((i-j+1)>0 && (i-j)<4)
13.	            y(i)=y(i)+x(j)*h(i-j+1);
14.	            disp(y(i));
15.	        end
16.	    end
17.	end
18.	subplot(3,1,1);
19.	stem(x);
20.	title('Input Signal x(n)');
21.	subplot(3,1,2);
22.	stem(h);
23.	title('Impulse Response h(n)');
24.	subplot(3,1,3);
25.	stem(y);
26.	title('Convolution Result y(n)');


```

## Plot:

![](plots/exp2code1.PNG)

**Fig.2.1** : Convolution of Two Signal

## Discussion:

<div align='justify'>

In this experiment the MATLAB implementation of linear convolution in digital signal processing was taught which was coded logically without using MATLAB's convolution function.

</div>

</br>

## Conclusion:

<div align='justify'>

The experiment was successfully completed without any error.

</div>

