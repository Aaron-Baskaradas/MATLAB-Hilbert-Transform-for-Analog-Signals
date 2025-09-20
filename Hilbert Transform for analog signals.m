% Example signal: sum of two sinusoids
Fs = 2.7e9;            % Sampling frequency (Hz)
T = 1/Fs;             % Sampling period (s)
L = 1024;             % Length of signal
t = (0:L-1)*T;        % Time vector

x =sin(2*pi*50*t)


% Compute the FFT
Y = fft(x);

% Rotate the Coefficients by 90 degrees

Y_rot=rot90(Y);

% Taking iFFT of the rotated values

Y_hil=ifft(Y_rot);

