Recon_Heart_Signal_lvl1 = out.Recon_Signal_lvl1;
Recon_Heart_Signal_lvl2 = out.Recon_Signal_lvl2;
Recon_Heart_Signal_lvl3 = out.Recon_Signal_lvl3;
Recon_Heart_Signal_lvl4 = out.Recon_Signal_lvl4;

Recon_Signal_length1 = length(Recon_Heart_Signal_lvl1);
Recon_Signal_length2 = length(Recon_Heart_Signal_lvl2);
Recon_Signal_length3 = length(Recon_Heart_Signal_lvl3);
Recon_Signal_length4 = length(Recon_Heart_Signal_lvl4);

figure(1)
subplot(2,2,1)
recon_freq_domain_lvl1 = fft(Recon_Heart_Signal_lvl1);
plot(fs1/(Recon_Signal_length1)*(0:Recon_Signal_length1-1),abs(recon_freq_domain_lvl1))
grid on
title('IDWT Reconstructed Signal at Level 1 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,2)
recon_freq_domain_lvl2 = fft(Recon_Heart_Signal_lvl2);
plot(fs1/(Recon_Signal_length2)*(0:Recon_Signal_length2-1),abs(recon_freq_domain_lvl2),"Color",[0.9290 0.6940 0.1250])
grid on
title('IDWT Reconstructed Signal at Level 2 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,3)
recon_freq_domain_lvl3 = fft(Recon_Heart_Signal_lvl3);
plot(fs1/(Recon_Signal_length3)*(0:Recon_Signal_length3-1),abs(recon_freq_domain_lvl3),"Color",[0.4940 0.1840 0.5560])
grid on
title('IDWT Reconstructed Signal at Level 3 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,4)
recon_freq_domain_lvl4 = fft(Recon_Heart_Signal_lvl4);
plot(fs1/(Recon_Signal_length4)*(0:Recon_Signal_length4-1),abs(recon_freq_domain_lvl4),"Color",[0.6350 0.0780 0.1840])
grid on
title('IDWT Reconstructed Signal at Level 4 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')