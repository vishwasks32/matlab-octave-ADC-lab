clc;
lambda = input('Enter the value of wavelength : ');
N = input('Enter the number of elements(3,4,5..): ');
a = input('Enter your circular radius(interms of lambda): ');
theta_0 = input('Enter angle theta at which main lobe occurs : ');
phi_0 = input('Enter angle phi at which main lobe occurs : ');
B = (2 * pi/lambda);
theta= pi/100:pi/100:2*pi;
phi = pi/100:pi/100:2*pi;

f1 = sin(theta_0) * cos(phi_0);
f2 = sin(theta_0) * sin(phi_0);
f3 = sin(theta) .* cos(phi);
f4 = sin(theta) .* sin(phi);

X = f3 - f1;
Y = f4 - f2;
ra = a .* sqrt(X .^ 2 + Y .^ 2);

AFn = besselj(a, B .* ra);
polar(theta, AFn);
title('Field Pattern of Circular Array')