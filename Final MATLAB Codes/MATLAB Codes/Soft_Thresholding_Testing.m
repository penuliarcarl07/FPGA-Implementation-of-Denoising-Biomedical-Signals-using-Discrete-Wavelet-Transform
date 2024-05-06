figure(1)

% High Pass Filter DWT Output at Level 1 in Time Domain
High_Pass_Heart_Signal_lvl1 = out.Detailed_Signal_lvl1;
Detailed_Signal_length = length(High_Pass_Heart_Signal_lvl1);
subplot(2,2,1)
High_Pass_Heart_Signal_lvl1(:,1) = [];
plot(t2,High_Pass_Heart_Signal_lvl1)
title('High Pass Filter DWT Output at Level 1 in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

% High Pass Filter DWT Output at Level 1 in Frequency Domain
subplot(2,2,2)
high_pass_freq_domain_lvl1 = fft(High_Pass_Heart_Signal_lvl1);
plot(fs1/(Detailed_Signal_length)*(0:Detailed_Signal_length-1),abs(high_pass_freq_domain_lvl1),"Color",[0.8500 0.3250 0.0980])
title('High Pass Filter DWT Output at Level 1 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

% New High Pass Filter DWT Output at Level 1 in Time Domain
New_High_Pass_Heart_Signal_lvl1 = out.New_Detailed_Signal_lvl1;
subplot(2,2,3)
New_High_Pass_Heart_Signal_lvl1(:,1) = [];
plot(t2,New_High_Pass_Heart_Signal_lvl1,"Color",[0.9290 0.6940 0.1250])
title('New High Pass Filter DWT Output at Level 1 in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

% New High Pass Filter DWT Output at Level 1 in Frequency Domain
subplot(2,2,4)
new_high_pass_freq_domain_lvl1 = fft(New_High_Pass_Heart_Signal_lvl1);
plot(fs1/(Detailed_Signal_length)*(0:Detailed_Signal_length-1),abs(new_high_pass_freq_domain_lvl1),"Color",[0.4940 0.1840 0.5560])
title('New High Pass Filter DWT Output at Level 1 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

figure(2)
% High Pass Filter DWT Output at Level 2 in Time Domain
High_Pass_Heart_Signal_lvl2 = out.Detailed_Signal_lvl2;
subplot(2,2,1)
High_Pass_Heart_Signal_lvl2(:,1) = [];
plot(t2,High_Pass_Heart_Signal_lvl2)
title('High Pass Filter DWT Output at Level 2 in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

% High Pass Filter DWT Output at Level 2 in Frequency Domain
subplot(2,2,2)
new_high_pass_freq_domain_lvl2 = fft(High_Pass_Heart_Signal_lvl2);
plot(fs1/(Detailed_Signal_length)*(0:Detailed_Signal_length-1),abs(new_high_pass_freq_domain_lvl2),"Color",[0.8500 0.3250 0.0980])
title('High Pass Filter DWT Output at Level 2 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

% New High Pass Filter DWT Output at Level 2 in Time Domain
New_High_Pass_Heart_Signal_lvl2 = out.New_Detailed_Signal_lvl2;
subplot(2,2,3)
New_High_Pass_Heart_Signal_lvl2(:,1) = [];
plot(t2,New_High_Pass_Heart_Signal_lvl2,"Color",[0.9290 0.6940 0.1250])
title('New High Pass Filter DWT Output at Level 2 in Time Domain')
xlabel('Time (seconds)')
ylabel('Amplitude')

% New High Pass Filter DWT Output at Level 2 in Frequency Domain
subplot(2,2,4)
new_high_pass_freq_domain_lvl2 = fft(New_High_Pass_Heart_Signal_lvl2);
plot(fs1/(Detailed_Signal_length)*(0:Detailed_Signal_length-1),abs(new_high_pass_freq_domain_lvl2),"Color",[0.4940 0.1840 0.5560])
title('New High Pass Filter DWT Output at Level 2 in Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude (abs)')

