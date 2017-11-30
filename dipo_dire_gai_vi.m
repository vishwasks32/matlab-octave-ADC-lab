% Author : Vishwas K Singh
% Script to find Directivity and gain of dipole antenna

% Clear everything
clc;
close all;
clear all;

% Initialize the constants c and u
C=3.8*10^8;
U=0.0032;

% Take the inputs L, R and Y(lambda)
fprintf('Input parameters:\n');
L=input ('Length of dipole : ');
r=input ('Radius of dipole : ');
Y=input ('wavelength : ');

f=C/Y;
ratio=L/Y
rloss=L/(6*pi*r))*sqrt((pi*f*U)/(2*r));
rrad=20*pi^2*(L/Y)^2;

if ratio<=0.1
    fprintf('It is a short dipole \n');
    aem=3/(8*pi)*Y^2;
    D=4*pi/(Y^2)*aem;
    K=rrad/(rrad+rloss);
    G=K*D;
else
    fprintf('It is a dipole \n');
    aem=30/(73*pi)*Y^2;
    D=4*pi/(Y^2)*aem;
    K=rrad/(rrad+rloss);
    G=K*D;
end;

% Convert Gain to dB
Db=10 * log10(D);
Bw=4*pi/D;

% Printing the Outputs - Directivity, Gain, Gain(dB), BeamWidth
fprintf('output parameters: \n');
fprintf('directivity = %6.4f \n',D);
fprintf('directivity(dB) = %6.4f \n',Db);
fprintf('Gain = %6.4f \n',G');
fprintf('Beam width angle = %6.4f\n',Bw);
