
figure(1)
% Original Sound with Noise in Time Domain
Orig_Sound_Noise = out.Orig_Sound_Noise;
Orig_Sound_length = length(Orig_Sound_Noise);
Orig_Sound_Noise(:,1) = [];
subplot(2,2,1)
plot(t2,Orig_Sound_Noise);
grid on
title('Original Sound with Noise in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

% Original Sound with Noise in Frequency Domain
sound_freq_domain = fft(Orig_Sound_Noise);
subplot(2,2,2)
plot(fs1/(Orig_Sound_length)*(0:Orig_Sound_length-1),abs(sound_freq_domain),"Color",[0.8500 0.3250 0.0980])
grid on
title('Original Sound with Noise in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

% Reconstructed Sound in Time Domain
Recon_Sound_Noise = out.Recon_Sound_Noise;
Recon_Sound_length = length(Recon_Sound_Noise);
Recon_Sound_Noise(:,1) = [];
subplot(2,2,3)
plot(t2,Recon_Sound_Noise,"Color",[0.9290 0.6940 0.1250]);
grid on
title('Reconstructed Signal in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

% Reconstructed Sound in Frequency Domain
recon_sound_freq_domain = fft(Recon_Sound_Noise);
subplot(2,2,4)
plot(fs1/(Recon_Sound_length)*(0:Recon_Sound_length-1),abs(recon_sound_freq_domain),"Color",[0.4940 0.1840 0.5560])
grid on
title('Reconstructed Signal in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')