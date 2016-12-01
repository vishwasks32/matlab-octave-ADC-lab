% Author : Vishwas K Singh
% Script to find Directivity of Square Aperture antenna

% Clear everything
clc;
close all;
clear all;

% Take the inputs Y(lambda), constant value k
fprintf('Input parameters : \n');
Y=input ('wavelength : ');
k=input('constant value ranging from 0.5 to 0.7 : ');

a=10*Y;
A0=a^2;
D=((4*pi)/Y^2)*A0*k;
Db = 10 * log10(D);

% Print the output Directivity, Directivity(dB)
fprintf('\n output parameters : ');
fprintf('\n directivity : %6.4f',D);
fprintf('\n directivity(dB) : %6.4f \n',Db);