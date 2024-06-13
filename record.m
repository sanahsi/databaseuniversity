clc
clear 
close all

fs = 44100;
nBits = 16;
nChannels = 1;
recObj = audiorecorder(fs, nBits, nChannels);
disp('Start speaking.')
recordblocking(recObj, 2);
disp('End of Recording.');
play(recObj);
audioData = getaudiodata(recObj);
filename = '.wav';
audiowrite(filename, audioData, fs);
disp(['Audio recorded and saved to ', filename]);
figure;
plot(audioData);
title('Recorded Audio');
xlabel('Sample Number');
ylabel('Amplitude');