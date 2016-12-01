% Author : Vishwas K Singh
% Script to plot FSK waveform

% Clear everything
clc;
clear all;
close all;

% take the input sequence
x = [1 1 0 0 1 0 1 0 ];
nx = size(x,2);

subplot(4,1,1);
stem(x);
title('Input Sequence');
xlabel('Time');
ylabel('amplitude');
hold on;
grid on;

% Two carriers with two frequencies
f1 = 5;
f2 = 10;
tc = 0:0.001:10;

% generate fc1 and plot
fc1 = sin(2*pi*f1*tc);
subplot(4,1,2);
plot(tc,fc1);
title('Carrier Frequency 1');
xlabel('Time');
ylabel('Amplitude');
hold on;
grid on;

% generate fc2 and plot
fc2 = sin(2*pi*f2*tc);
subplot(4,1,3);
plot(tc,fc2);
title('Carrier Frequency 2');
xlabel('Time');
ylabel('Amplitude');
hold on;
grid on;


% for symbol 0 send fc2 for symbol 1 send fc1
i = 1;
while i < nx+1
    t = i:0.001:i+1;
    if x(i) == 1
        fsk = sin(2 * pi * f1 * t);
    else
        fsk = sin(2 * pi * f2 * t);
    end
    
    % Plot the output
    subplot(4,1,4);
    plot(t,fsk);
    title('FSK');
    xlabel('Time');
    ylabel('Amplitude');
    hold on;
    grid on;
    
    i = i+1;
end