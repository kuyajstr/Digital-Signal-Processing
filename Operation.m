clc
clear all
close all
[x,fs] = audioread('Raw.wav'); % read audio file

y = Flange(x,fs);

figure;
subplot(2,1,1)
plot(x)
title('Raw Audio')
xlabel('Time')
ylabel('Audio Signal')

subplot(2,1,2)
plot(y)
title('Flanged Audio')
xlabel('Time')
ylabel('Audio Signal')

%% Plotting Raw Audio
% Plot Time Domain for input
xt = linspace(0,length(x)/fs,length(x)); %vector of raw audio
figure;
subplot(2,1,1)
plot(xt,abs(x))
title('time domain')
xlabel('Time')
ylabel('amplitude')

% Plot Freq Domain
xnfft = 1024;
f = linspace(0,fs,xnfft);
X = abs(fft(x,xnfft));

subplot(2,1,2)
plot(f(1:xnfft/2),X(1:xnfft/2));
title('freq domain')
xlabel('freq')
ylabel('abs')

%% Plotting Flanged Audio
yt = linspace(0,length(y)/fs,length(y)); %vector of flanged audio
figure;
subplot(2,1,1)
plot(yt,abs(y))
title('time domain')
xlabel('Time')
ylabel('amplitude')

% Plot Freq Domain
ynfft = 1024;
f = linspace(0,fs,ynfft);
Y = abs(fft(y,ynfft));

subplot(2,1,2)
plot(f(1:ynfft/2),Y(1:ynfft/2));
title('freq domain')
xlabel('freq')
ylabel('abs')

%% Audio Output
% play input
% sound(x,fs)

% play output audio
% sound(y,fs)
% save audio output
% audiowrite('Output.wav',y,fs);