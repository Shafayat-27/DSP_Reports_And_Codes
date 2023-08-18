% Define the transfer function coefficients
b = [0 1];
a = [1 -1];
 
% Create the transfer function object
H = tf(b, a, 1);
 
% Display the transfer function
disp('Transfer Function:');
disp(H);
 
% Obtain the poles of the transfer function
poles = pole(H);
 
% Display the poles
disp('Poles:');
disp(poles);
 
% Plot the poles on the z-plane
figure;
zplane([], poles);
title('Pole Locations');
