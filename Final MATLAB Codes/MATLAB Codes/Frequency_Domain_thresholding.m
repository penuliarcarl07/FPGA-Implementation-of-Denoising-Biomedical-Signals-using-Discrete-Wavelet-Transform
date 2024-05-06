New_High_Pass_Heart_Signal_lvl1 = out.New_Detailed_Signal_lvl1;
New_High_Pass_Heart_Signal_lvl2 = out.New_Detailed_Signal_lvl2;
New_High_Pass_Heart_Signal_lvl3 = out.New_Detailed_Signal_lvl3;
New_High_Pass_Heart_Signal_lvl4 = out.New_Detailed_Signal_lvl4;


Detailed_Signal_length1 = length(New_High_Pass_Heart_Signal_lvl1);
Detailed_Signal_length2 = length(New_High_Pass_Heart_Signal_lvl2);
Detailed_Signal_length3 = length(New_High_Pass_Heart_Signal_lvl3);
Detailed_Signal_length4 = length(New_High_Pass_Heart_Signal_lvl4);
figure(1)
subplot(2,2,1)
new_high_pass_freq_domain_lvl1 = fft(New_High_Pass_Heart_Signal_lvl1);
plot(fs1/(Detailed_Signal_length1)*(0:Detailed_Signal_length1-1),abs(new_high_pass_freq_domain_lvl1))
grid on
title('New High Pass Filter DWT Output at Level 1 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,2)
new_high_pass_freq_domain_lvl2 = fft(New_High_Pass_Heart_Signal_lvl2);
plot(fs1/(Detailed_Signal_length2)*(0:Detailed_Signal_length2-1),abs(new_high_pass_freq_domain_lvl2),"Color",[0.9290 0.6940 0.1250])
grid on
title('New High Pass Filter DWT Output at Level 2 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,3)
new_high_pass_freq_domain_lvl3 = fft(New_High_Pass_Heart_Signal_lvl3);
plot(fs1/(Detailed_Signal_length3)*(0:Detailed_Signal_length3-1),abs(new_high_pass_freq_domain_lvl3),"Color",[0.4940 0.1840 0.5560])
grid on
title('New High Pass Filter DWT Output at Level 3 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

subplot(2,2,4)
new_high_pass_freq_domain_lvl4 = fft(New_High_Pass_Heart_Signal_lvl4);
plot(fs1/(Detailed_Signal_length4)*(0:Detailed_Signal_length4-1),abs(new_high_pass_freq_domain_lvl4),"Color",[0.6350 0.0780 0.1840])
grid on
title('New High Pass Filter DWT Output at Level 4 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')