% Author : Vishwas K Singh
% Script to find radiation pattern of linear antenna array

% Clear everything
clc;
clear all;
close all;

% Take the lambda(Wavelength), N(Number of Elements), alpha(progressive phase),
% d(distance between elements)
lamda=input('enter the value of wavelength : ');
N=input('enter the number of elements : ');
alpha=input('enter your progressive phase : ');
d=input('enter the separation on distance between elements : ');

beta=(2*pi/lamda);
theta=pi/100:pi/100:2*pi;
psi=alpha+beta * d.* cos(theta);
c=sin(N*(psi./2))./sin(psi./2);

%plot the radiation pattern
polar(theta,c/N);
title('Radiation pattern of Linear array');
