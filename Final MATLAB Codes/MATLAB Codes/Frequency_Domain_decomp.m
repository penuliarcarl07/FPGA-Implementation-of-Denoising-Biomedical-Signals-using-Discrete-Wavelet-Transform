High_Pass_Heart_Signal_lvl1 = out.Detailed_Signal_lvl1;
High_Pass_Heart_Signal_lvl2 = out.Detailed_Signal_lvl2;
High_Pass_Heart_Signal_lvl3 = out.Detailed_Signal_lvl3;
High_Pass_Heart_Signal_lvl4 = out.Detailed_Signal_lv4;

Low_Pass_Heart_Signal_lvl1 = out.Approx_Signal_lvl1;
Low_Pass_Heart_Signal_lvl2 = out.Approx_Signal_lvl2;
Low_Pass_Heart_Signal_lvl3 = out.Approx_Signal_lvl3;
Low_Pass_Heart_Signal_lvl4 = out.Approx_Signal_lvl4;

Detailed_Signal_length1 = length(High_Pass_Heart_Signal_lvl1);
Detailed_Signal_length2 = length(High_Pass_Heart_Signal_lvl2);
Detailed_Signal_length3 = length(High_Pass_Heart_Signal_lvl3);
Detailed_Signal_length4 = length(High_Pass_Heart_Signal_lvl4);

Approx_Signal_length1 = length(Low_Pass_Heart_Signal_lvl1);
Approx_Signal_length2 = length(Low_Pass_Heart_Signal_lvl2);
Approx_Signal_length3 = length(Low_Pass_Heart_Signal_lvl3);
Approx_Signal_length4 = length(Low_Pass_Heart_Signal_lvl4);

figure(1)
subplot(2,2,1)
high_pass_freq_domain_lvl1 = fft(High_Pass_Heart_Signal_lvl1);
plot(fs1/(Detailed_Signal_length1)*(0:Detailed_Signal_length1-1),abs(high_pass_freq_domain_lvl1))
grid on
title('High Pass Filter DWT Output at Level 1 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,2)
high_pass_freq_domain_lvl2 = fft(High_Pass_Heart_Signal_lvl2);
plot(fs1/(Detailed_Signal_length2)*(0:Detailed_Signal_length2-1),abs(high_pass_freq_domain_lvl2),"Color",[0.9290 0.6940 0.1250])
grid on
title('High Pass Filter DWT Output at Level 2 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,3)
high_pass_freq_domain_lvl3 = fft(High_Pass_Heart_Signal_lvl3);
plot(fs1/(Detailed_Signal_length3)*(0:Detailed_Signal_length3-1),abs(high_pass_freq_domain_lvl3),"Color",[0.4940 0.1840 0.5560])
grid on
title('High Pass Filter DWT Output at Level 3 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,4)
high_pass_freq_domain_lvl4 = fft(High_Pass_Heart_Signal_lvl4);
plot(fs1/(Detailed_Signal_length4)*(0:Detailed_Signal_length4-1),abs(high_pass_freq_domain_lvl4),"Color",[0.6350 0.0780 0.1840])
grid on
title('High Pass Filter DWT Output at Level 4 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

figure(2)
subplot(2,2,1)
low_pass_freq_domain_lvl1 = fft(Low_Pass_Heart_Signal_lvl1);
plot(fs1/(Approx_Signal_length1)*(0:Approx_Signal_length1-1),abs(low_pass_freq_domain_lvl1))
grid on
title('Low Pass Filter DWT Output at Level 1 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,2)
low_pass_freq_domain_lvl2 = fft(Low_Pass_Heart_Signal_lvl2);
plot(fs1/(Approx_Signal_length2)*(0:Approx_Signal_length2-1),abs(low_pass_freq_domain_lvl2),"Color",[0.9290 0.6940 0.1250])
grid on
title('Low Pass Filter DWT Output at Level 2 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,3)
low_pass_freq_domain_lvl3 = fft(Low_Pass_Heart_Signal_lvl3);
plot(fs1/(Approx_Signal_length3)*(0:Approx_Signal_length3-1),abs(low_pass_freq_domain_lvl3),"Color",[0.4940 0.1840 0.5560])
grid on
title('Low Pass Filter DWT Output at Level 3 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,4)
low_pass_freq_domain_lvl4 = fft(Low_Pass_Heart_Signal_lvl4);
plot(fs1/(Approx_Signal_length4)*(0:Approx_Signal_length4-1),abs(low_pass_freq_domain_lvl4),"Color",[0.6350 0.0780 0.1840])
grid on
title('Low Pass Filter DWT Output at Level 4 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')