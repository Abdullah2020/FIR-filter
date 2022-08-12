% QUESTION 2

clc;
clear;
close all;

%Import the audio sound
[y, Fs] = audioread('Don_Giovanni_2.wav');

sound (y, Fs)
N = length(y);
disp(Fs)
disp(N)
Ts = 1/Fs;
t = 0:Ts:(N-1)*Ts;
Fint = Fs/N;
freq = 0:Fint:(N-1)*Fint;
figure (1)
plot(y) %plots the original audio signal of in time domain waveform
title('Time domain waveform of original audio signal');
xlabel('Time');
ylabel('Amplitude')
grid on;

Y = fft (y);
mag_Y= abs(Y);
figure (2)
plot(freq, mag_Y) %plots the original audio signal of in frequency domain
title('Spectrum of the original audio signal');
xlabel('Frequency');
ylabel('Amplitude')
grid on;

% the value of window is changed between 3, 11 and 31
window = 3/11/31; % each window value is tried one after the other
h = gausswin(2*window+1)./window;
x = filter(h,1,y);

%sound (x, Fe);
X = fft(x);
mag_X = abs(X);
figure(3)
plot(t, y, 'r')
grid
hold on
plot(t, x, 'g')
title('TIme Domain Analysis N=3/11/31')
xlabel('TIme in secs')
ylabel('Amplitude')
legend('Before Filtering Time','After Filtering Time')

figure(4)
semilogy(freq, mag_Y, 'r')
grid
hold on
semilogy(freq, mag_X, 'g')
title('Spectrum of Signal N=3/11/31')
xlabel('Frequency in Hz')
ylabel('Amplitude in log scale')
legend('Before Filtering Freq', 'After Filtering Freq')