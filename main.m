clc; clear all; close all;
load handel.mat

filename = 'handel.wav';
audiowrite(filename,y,Fs);
clear y Fs 
[y,Fs] = audioread('handel.wav');
    %soundsc(y);
novi = awgn(y,15,'measured');
z = y +randn(size(y));
    %soundsc(novi,12000);
      spektar = fft(novi);
      plot(abs(spektar));
      figure;
    %  plot(abs(fft(y)));
signal = SSBoll79(novi,Fs,0.25);
-*2plot(abs(fft(signal)));
%soundsc(signal);


signal_2 = SSBerouti79(novi,Fs,0.25);
figure;
plot(abs(fft(signal_2)));
soundsc(signal_2);