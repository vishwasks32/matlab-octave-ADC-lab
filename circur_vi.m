% Author : Vishwas K Singh
% Script to find radiation pattern of circular antenna array

% Clear everything
clc;
clear all;
close all;

% Take the lambda(Wavelength), N(Number of Elements), a(Circular radius),
% angle(theta and phi)
lambda = input('Enter the value of wavelength: ');
N = input('Enter the  number of elements (3,4,5...): ');
a = input('Enter your circular radius(interms of lambda for example 0.2 for 0.21lambda): ');
theta_0 = input('Enter angle theta at which main lobe occurs eg 45: ');
phi_0 = input('Enter angle phi at which main lobe occurs eg 90 : ');


B = (2* pi/lambda);
theta = pi/100 : pi/100 : 2 * pi;
phi = pi/100 : pi/100 : 2 * pi;
f1 = sin(theta_0) * cos(phi_0);
f2 = sin(theta_0) * sin(phi_0);
f3 = sin(theta) .* cos(phi);
f4 = sin(theta) .* sin(phi);
X = f3 - f1;
Y = f4 - f2;
ra = a.* sqrt(X.^2 + Y.^2);
AFn = besselj(0, B.* ra);

%plot the radiation pattern
polar(theta,AFn);
title('Radiation patten of Circular array');