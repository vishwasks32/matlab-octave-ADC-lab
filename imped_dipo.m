% Author : Vishwas K Singh
% Script to find Impedance of Dipole antenna

% Clear everything
clc;
close all;
clear all;

% Initialize the constants
C=3*10^8;
U=0.0032;

% Take the inputs 
L=input ('length of dipole= ');
r=input ('radius of dipole= ');
Y=input ('wavelength = ');

f=C/Y;
ratio=L/Y;
P = (L /(2 * r));
X = -120 * Y / (pi*L) * (log(P) -1);
rloss=L/(6*pi*r)*sqrt((pi*f*U)/(2*r));
rrad=20*pi^2*(L/Y)^2;
Z = rrad + rloss + j* X;

% Print the Output Parameters
fprintf('\n reactance : %6.4f',X);
fprintf('\n radiation resistance : %6.4f',rrad);
fprintf('\n Loss Resistance : %6.4f',rloss);
fprintf('\n input impedance : %6.4f + j %6.4f \n',real(Z), imag(Z));
