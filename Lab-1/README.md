## Experiment No : 01

## Experiment Date : 20.03.2023

## Experiment Name :

## Presentation of some signals using MATLAB.
    1.	Plot unit step, unit impulse and unit ramp signal using conditions.
    2.	Plot a discrete signal.
    3.	Plot two discrete signal, their addition and subtraction.
    4.	Plot two given continuous signal.


---

## Theory :

<div align='justify'>
The unit step signal, denoted as u[n], is a discrete-time signal that takes the value 1 for all non-negative integers and 0 for all negative integers.

</div>

</br>

> u[n] = 1, for n ≥ 0 </br>
> u[n] = 0, for n < 0

<div align='justify'>

The unit ramp signal, denoted as r[n], is a discrete-time signal that starts from 0 at n = 0 and increases by 1 unit for each integer value of n.

</div>

> r[n] = 0, for n < 0 </br>
> r[n] = n, for n ≥ 0

<div align='justify'>

The unit impulse signal, denoted as δ[n], is a discrete-time signal that takes the value 1 only at n = 0 and is 0 for all other values of n.

</div>

> δ[n] = 1, for n = 0 </br>
> δ[n] = 0, for n ≠ 0 

</br>

<div align='justify'>

A discrete-time signal is a type of signal that is defined only at specific, distinct points in time. In other words, it is a signal whose values are known and represented at specific discrete time instants. Discrete-time signals are often used in various fields of engineering, mathematics, and signal processing for analysis, manipulation, and communication.

</div>


## Software Used:

> Matlab

## Code : 
## Unit step, unit impulse and unit ramp signal plotting code:

```matlab
1. 1.	clc;
2.	clear all;
3.	close all;
4.	 
5.	t=-10:0.001:10;
6.	step= t>= 0;
7.	impulse= t==0;
8.	ramp= (t>=0).*t;
9.	 
10.	subplot(3,1,1);
11.	plot(t,step);
12.	xlabel('Time');
13.	ylabel('Amplitude');
14.	title('Unit step');
15.	 
16.	subplot(3,1,2);
17.	plot(t,impulse);
18.	xlabel('Time');
19.	ylabel('Amplitude');
20.	title('Unit Impluse');
21.	 
22.	subplot(3,1,3);
23.	plot(t,ramp);
24.	xlabel('Time');
25.	ylabel('Amplitude');
26.	title('Unit ramp');

```

## Plott:

![](/plots/exp1code1.PNG)

**Fig.1.1** : Signal Plot

## Code: 
## Discrete signal plotting code:

```matlab
1.	clc;
2.	clear all;
3.	close all;
4.	     
5.	x=[-2, 3, 2, 0, 1, 5, 3];
6.	n=[1 2 3 4 5 6 7];
7.	stem(n,x);
8.	xlabel('n');
9.	ylabel('x');

```

## Plot :

![](/plots/exp1code2.PNG)

**Fig.1.2:** Discrete Signal

## Code: 
## Addition and subtraction of two signals plotting code:

```matlab
1.	clc;
2.	clear all;
3.	close all;
4.	     
5.	t=-10:1:10;
6.	s1= t>=0 & t<=5;
7.	s2= t>=2 & t<=7;
8.	 
9.	subplot(4,1,1);
10.	stem(t,s1);
11.	xlabel('Time');
12.	ylabel('Amplitude');
13.	title('Signal 1');
14.	 
15.	subplot(4,1,2);
16.	stem(t,s2);
17.	xlabel('Time');
18.	ylabel('Amplitude');
19.	title('Signal 2');
20.	 
21.	step3 = s1+s2
22.	subplot(4,1,3);
23.	stem(t,step3);
24.	xlabel('Time');
25.	ylabel('Amplitude');
26.	title('Addition');
27.	 
28.	step4 = s1-s2
29.	subplot(4,1,4);
30.	stem(t,step4);
31.	xlabel('Time');
32.	ylabel('Amplitude');
33.	title('Subtraction');

```

## plot :

![](/plots/exp1code3.PNG)

**Fig.1.3:** Discrete Signal operation Plott

## Code: 
## Plotting two signals:

```matlab
1.	clc;
2.	clear all;
3.	close all;
4.	 
5.	t=0:1:7;
6.	u = [ones(1,1).*1 ones(1,2).*2 ones(1,1).*5 ones(1,1).*5 ones(1,2).*2 ones(1,1)];
7.	subplot(2,1,1);
8.	plot(t,u);
9.	xlabel('Time');
10.	ylabel('Amplitude');
11.	title('Signal 1');
12.	 
13.	t=0:1:6;
14.	u1 = [zeros(1,1) ones(1,5) zeros(1,1)];
15.	subplot(2,1,2);
16.	plot(t,u1);
17.	xlabel('Time');
18.	ylabel('Amplitude');
19.	title('Signal 2');

```

## Plot :

![](/plots/exp1code4.PNG)

**Fig.1.4:** Continious Signal

## Discussion::

<div align='justify'>

By using conditions, the unit step, unit impulse and unit ramp signals output had been shown. After that a discrete signal had been generated. Then for two signals the addition and subtraction had been performed. For the last code the plot did not came as per expectation.

</div>

</br>

## Conclusion:

<div align='justify'>

The experiment had been done well without any error and got the expected outcome but not for the last task given.

</div>