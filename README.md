# FIR-filter

A moving average filter is one of the simplest and common filter in digital signal processing because it is the easiest to understand and use. Its optimality for a common task is such that it reduces random noise while retaining a sharp step response.

To perform the moving average filter on the given audio `“Don_Giovanni_2.wav”`for different values of N, where N represents the order of the filter (N = 3, 11 and 31),the step-wise approach used is given below:

+ Import the audio sound to the Matlab environment or workspace using ‘audioread’ function and take note of the audio properties. The sampling frequency, Fs, of the audio signal is 44100Hz and the total number of samples in the signal, N, is 858396
+ From the Fs, the Sample Interval, Ts was calculated, Ts = 1/Fs and the Frequency Interval, Fint = Fs/N.
+ The fft of the imported signal is computed and used to show the spectral content before filtering.
+ The moving average filter, which is an FIR filter is then designed using the “gausswin” function in matlab. The window size changes as a result of the value of the N given for analysis.
+ The “filter” function in matlab was used to filter the imported signal.
+ The spectral analysis of the output of the filtering was done in order to see the spectral effect before and after filtering.
+ The signals before and after filtering was also shown in the time domain.

# Results
![Time2](https://user-images.githubusercontent.com/16369782/184450413-762a6bd6-b081-4ca7-bfe8-6b5b78d5c1e2.jpg)

![Spectrum2](https://user-images.githubusercontent.com/16369782/184450426-10cc1c1e-5afb-4459-9aaf-91ff4d42a6ce.jpg)

![re2Time](https://user-images.githubusercontent.com/16369782/184450437-70174aa4-bf2d-43a0-bf7f-967766c68587.jpg)

![Spectrum of Filtered Signal](https://user-images.githubusercontent.com/16369782/184450447-c92e2505-eb9a-4b80-93d9-f4dc45d1bb29.jpg)

