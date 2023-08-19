## Experiment Date: 21.05.2023

## Experiment No : 05

## Experiment Name :

## Experiment on finding the Z-transform and inverse Z-transform of a function.

---

## Theory :

<p align='justify'>
An analytical and processing tool for discrete-time signals and systems in the frequency domain is the Z-transform in digital signal processing. In continuous-time signal processing, it is comparable to the Laplace transform. With the Z-transform, discrete-time signals and systems can be represented in terms of a complex variable, "z," enabling investigation of their frequency content and behavior.

</p>
<br>

## Software Used:

> Matlab

## Code: 

## Z-transform and inverse Z-transform for right-side signal:

```matlab
1.	clc;
2.	close all;
3.	clear all;
4.	syms n; 
5.	 
6.	x = [1 2 3 4 5];
7.	l = length(x);
8.	trans = 0;
9.	z = sym('z');
10.	for i=0:l-1
11.	    trans=trans+x(i+1).*z^(-i);
12.	end
13.	disp('Z-transform for the right sided signal:');
14.	disp(trans);
15.	f=iztrans(trans);
16.	disp('Inverse Z-transform for the right sided signal:');
17.	disp(f);


```

## Z-transform and inverse Z-transform for left-side signal:
```matlab
1.	clc;
2.	close all;
3.	clear all;
4.	syms n;
5.	x = [1 2 3 4 5];
6.	y = fliplr(x);
7.	l = length(y);
8.	trans = 0;
9.	z = sym('z');
10.	for i=0:l-1
11.	    trans=trans+y(i+1).*z^(i);
12.	end
13.	disp('Z-transform for the left sided signal:');
14.	disp(trans);
15.	f=iztrans(trans);
16.	disp('Inverse Z-transform for the left sided signal:');
17.	disp(f);


```

## Z-transform and inverse Z-transform for non-causal signal:
```matlab
1.	clc;
2.	close all;
3.	clear all;
4.	syms n;
5.	x = [1 2 3 4 5 6 7];
6.	n = length(x);
7.	k=input('Enter zero index:');
8.	p=[];
9.	for i=0:k
10.	    p(i+1)=x(i+1);
11.	end 
12.	h=fliplr(p);
13.	u=length(h);
14.	trans = 0;
15.	z = sym('z');
16.	for i=0:u-1
17.	    trans=trans+h(i+1).*z^(i);
18.	end 
19.	q=[];
20.	for i=0:(n-k-2)
21.	    q(i+1)= x(i+k+2);
22.	end 
23.	 
24.	v=length(q);
25.	for i=0:v-1
26.	    trans=trans+q(i+1).*z^(-(i+1));
27.	end 
28.	disp('Z-transform for non-causal signal:');
29.	disp(trans);
30.	f=iztrans(trans);
31.	disp('Inverse Z-transform for non-causal signal:');
32.	disp(f);


```

## Output:
## Z-transform and inverse Z-transform of right-sided signal:

```bash
1.	Z-transform for the right sided signal:
2.	2/z + 3/z^2 + 4/z^3 + 5/z^4 + 1
3.	 
4.	Inverse Z-transform for the right sided signal:
5.	2*kroneckerDelta(n - 1, 0) + 3*kroneckerDelta(n - 2, 0) + 4*kroneckerDelta(n - 3, 0) + 5*kroneckerDelta(n - 4, 0) + kroneckerDelta(n, 0)

```
## Z-transform and inverse Z-transform of left-sided signal:

```bash
1.	Z-transform for the left sided signal:
2.	z^4 + 2*z^3 + 3*z^2 + 4*z + 5
3.	 
4.	Inverse Z-transform for the left sided signal:
5.	5*kroneckerDelta(n, 0) + 3*iztrans(z^2, z, n) + 2*iztrans(z^3, z, n) + iztrans(z^4, z, n) + 4*iztrans(z, z, n)


```

## Z-transform and inverse Z-transform of non-causal signal:
```bash
1.	Enter zero index:2
2.	Z-transform for non-causal signal:
3.	2*z + 4/z + 5/z^2 + z^2 + 6/z^3 + 7/z^4 + 3
4.	 
5.	Inverse Z-transform for non-causal signal:
6.	4*kroneckerDelta(n - 1, 0) + 5*kroneckerDelta(n - 2, 0) + 6*kroneckerDelta(n - 3, 0) + 7*kroneckerDelta(n - 4, 0) + 3*kroneckerDelta(n, 0) + iztrans(z^2, z, n) + 2*iztrans(z, z, n)


```


## Discussion:

<p align='justify'>

We used the Z-transform to analyze three different signal types in the experiment: right-side, left-side, and both-sided non-causal signals. We discovered that the power of z was negative in the right side signal and positive in the left side signal, which was consistent with our theoretical theories as well. We employed a function called "iztrans" to determine the inverse of the functions' Z-transform, and it performed as intended.

</p>

</br>

## Conclusion:

<p align='justify'>

The experiment had been done perfectly without any error and got the expected output. 
</p>