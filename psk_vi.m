% Author : Vishwas K Singh
% Script to plot psk waveform

% Clear everything
clc;
clear all;
close all;

% Take the input sequence and plot it
x = [1 1 0 0 1 0 1 0 ];
nx = size(x,2);
subplot(4,1,1);
stem(x);
title('Input Sequence');
xlabel('Time');
ylabel('amplitude');
hold on;
grid on;

% Plot the carrier with frequency 5
f = 5;
tc = 1:0.001:nx+1;

% Plot carrier 1
fc1 = sin(2*pi*f*tc);
subplot(4,1,2);
plot(tc,fc1);
title('Carrier Frequency 1');
xlabel('Time');
ylabel('amplitude');
hold on;
grid on;

% Plot carrier 2
fc2 = cos(2*pi*f*tc);
subplot(4,1,3);
plot(tc,fc2);
title('Carrier Frequency 2');
xlabel('Time');
ylabel('amplitude');
hold on;
grid on;

% fc1 for 1, fc2 for 0
i = 1;
while i < nx+1
    t = i:0.001:i+1;
    if x(i) == 1
        psk = sin(2 * pi * f * t);
    else
        psk = cos(2 * pi * f * t);
    end
    
   % Plot the final output
   subplot(4,1,4);
   plot(t,psk);
   title('PSK');
   xlabel('Time');
   ylabel('amplitude');
   hold on;
   grid on;
   
   i = i+1;
end