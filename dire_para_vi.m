% Author : Vishwas K Singh
% Script to find Directivity of Parabolic Aperture antenna

% Clear everything
clc;
close all;
clear all;

% Take the inputs Y(lambda), constant
fprintf('Input parameters:\n');
Y=input ('wavelength : ');
k=input('constant value ranging from 0.5 to 0.7 : ');

a=10*Y;
A0=a;
D=((4*pi)/Y^2)*A0*k;
Db = 10 * log10(D);

% Print the outputs - Directivity, Directivity(dB)
fprintf('Output parameters: \n');
fprintf('directivity : %6.4f \n',D);
fprintf('directivity(dB) : %6.4f \n',Db);

