% Author : Vishwas K Singh
% Script to plot combination waveform of ask,psk and fsk

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

f = 5;
f2 = 10;

i = 1;
while i < nx+1
    t = i:0.001:i+1;
    if x(i) == 1
        ask = sin(2 * pi * f * t);
        fsk = sin(2 * pi * f * t);
        psk = sin(2 * pi * f * t);
    else
        ask = 0;
        fsk = sin(2 * pi * f2 * t);
        psk = cos(2 * pi * f * t);
    end

   % Plot the final output ask
   subplot(4,1,2);
   plot(t,ask);
   title('ASK');
   xlabel('Time');
   ylabel('Amplitude');
   hold on;
   grid on;
   
   % Plot the final output
   subplot(4,1,3);
   plot(t,fsk);
   title('FSK');
   xlabel('Time');
   ylabel('Amplitude');
   hold on;
   grid on;
   
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
