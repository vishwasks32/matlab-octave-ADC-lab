% Program to simulate ASK
% Author : Vishwas K Singh
% Date 11 - 11 - 2016

clear all;
close all;
clc;

% Input Sequence and size
x = [1 1 0 0 1 0 1 0 1];
nx = size(x,2);

% Generate the carrier frequency with say 5kHz
f = 5;
tc = 1:0.001:9;
fc = sin(2 * pi * f * tc);

% Perform ASK
i = 1;
while i < nx+1
	t = i:0.001:i+1;
	if x[i] == 1
		ask = sin(2*pi*f*t)
	else
		ask = 0
	endif
	i = i + 1;
endwhile

% Plot the sequence				
subplot(3,1,1);
stem(x);
axis([1 9 -1 1]);
title('Input Sequence');
xlabel('Time');
ylabel('Amplitude');
grid on;
hold on;

% Plot the carrier
subplot(3,1,2);
plot(tc,fc);
axis([1 9 -1 1]);
title('Carrier Frequency');
xlabel('Time');
ylabel('Amplitude');
grid on;
hold on;

% Plot the ASK Signal
subplot(3,1,3);
plot(t,ask);
axis([1 9 -1 1]);
title('ASK');
xlabel('Time');
ylabel('Amplitude');
grid on;
hold on;
