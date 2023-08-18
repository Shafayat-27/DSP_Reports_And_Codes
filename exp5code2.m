clc;
close all;
clear all;
syms n;
x = [1 2 3 4 5];
y = fliplr(x);
l = length(y);
trans = 0;
z = sym('z');
for i=0:l-1
    trans=trans+y(i+1).*z^(i);
end
disp('Z-transform for the left sided signal:');
disp(trans);
f=iztrans(trans);
disp('Inverse Z-transform for the left sided signal:');
disp(f);

