Lung_Sound1='130_1p2_Ar_mc_AKGC417L.wav';
[Lung_Sound,fs1] = audioread(Lung_Sound1);
t1=linspace(0,length(Lung_Sound)/fs1,length(Lung_Sound));
t11=t1';
fs1;
Lung_Noise = awgn(Lung_Sound,32);
Lung_length1 = length(Lung_Noise);                  
%plot(t1,Lung_Noise,'r');
%title('Lung Sound with Noise with Sampling Frequency(Hz)',fs1)

Heart_Sound1='Aunlabelledtest__201108222247.wav';
[Heart_Sound,fs2] = audioread(Heart_Sound1);
t2=linspace(0,length(Heart_Sound)/fs2,length(Heart_Sound));
t22=t2';
fs2;
Heart_Noise=awgn(Heart_Sound,32);
Heart_length1 = length(Heart_Noise);


figure(1)
% Original Heart Sound with Noise in Time Domain
Orig_Heart_Noise = out.Orig_Heart_Noise;
Orig_Heart_Noise(:,1) = [];
subplot(2,2,1)
plot(t2,Orig_Heart_Noise);
title('Input Sound with Noise in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

% Original Heart Sound with Noise in Frequency Domain
heart_freq_domain = fft(Orig_Heart_Noise);
subplot(2,2,2)
plot(fs1/(Heart_length1)*(0:Heart_length1-1),abs(heart_freq_domain),"Color",[0.8500 0.3250 0.0980])
title('Input Sound with Noise in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

% High_Frequency Components of Heart Sound with Noise in Time Domain
High_Pass_Heart_Signal = out.High_Pass_heart_lvl1;
subplot(2,2,3)
High_Pass_Heart_Signal(:,1) = [];
plot(t2,High_Pass_Heart_Signal,"Color",[0.9290 0.6940 0.1250])
title('High-Frequency Components of Input Sound with Noise in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

% High_Frequency Components of Heart Sound with Noise in Frequency Domain
subplot(2,2,4)
high_pass_freq_domain = fft(High_Pass_Heart_Signal);
plot(fs1/(Heart_length1)*(0:Heart_length1-1),abs(high_pass_freq_domain),"Color",[0.4940 0.1840 0.5560])
title('High-Frequency Components of Input Sound with Noise in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

figure(2)
% Original Heart Sound with Noise in Time Domain
Orig_Heart_Noise = out.Orig_Heart_Noise;
Orig_Heart_Noise(:,1) = [];
subplot(2,2,1)
plot(t2,Orig_Heart_Noise);
title('Input Sound with Noise in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

% Original Heart Sound with Noise in Frequency Domain
heart_freq_domain = fft(Orig_Heart_Noise);
subplot(2,2,2)
plot(fs1/(Heart_length1)*(0:Heart_length1-1),abs(heart_freq_domain),"Color",[0.8500 0.3250 0.0980])
title('Input Sound with Noise in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')


Low_Pass_Heart_Signal = out.Low_Pass_heart_lvl1;
subplot(2,2,3)
Low_Pass_Heart_Signal(:,1) = [];
plot(t2,Low_Pass_Heart_Signal,"Color",[0.9290 0.6940 0.1250])
title('Low-Frequency Components of Input Sound with Noise in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

subplot(2,2,4)
Low_pass_freq_domain = fft(Low_Pass_Heart_Signal);
plot(fs1/(Heart_length1)*(0:Heart_length1-1),abs(Low_pass_freq_domain),"Color",[0.4940 0.1840 0.5560])
title('Low-Frequency Components of Input Sound with Noise in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

