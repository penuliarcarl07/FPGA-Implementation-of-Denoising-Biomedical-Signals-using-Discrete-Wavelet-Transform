hdlsetuptoolpath('ToolName','Altera Quartus II','ToolPath',...
 'C:\altera\13.1\quartus\bin\quartus.exe');

figure(1)
subplot(4,1,1)
Lung_Sound1='130_1p2_Ar_mc_AKGC417L.wav';                  % Lung Sound
[Lung_Sound,fs1] = audioread(Lung_Sound1);                 % Reading the Lung Sound
t1=linspace(0,length(Lung_Sound)/fs1,length(Lung_Sound));  % Time Data of Lung Sound
t11=t1';                                                   
plot(t1,Lung_Sound)                                        % Plot of Lung Sound in Time Domain
title(['Lung Sound with Sampling Frequency of ',num2str(fs1),' Hz'])
fs1;                                                       % Sampling Frequency of Lung Sound

subplot(4,1,2)      
Lung_Noise=awgn(Lung_Sound,32);                            % Lung Sound with AWGN                       
Lung_Noise1=awgn(Lung_Sound,30);
Lung_length1 = length(Lung_Noise);                         % Length of Lung Sound
plot(t1,Lung_Noise,"Color",[0.8500 0.3250 0.0980]);        % Lung Sound w/ Noise in Time Domain
title(['Lung Sound with Noise with Sampling Frequency of ',num2str(fs1),' Hz'])

subplot(4,1,3)
Heart_Sound1='Aunlabelledtest__201108222247.wav';          % Heart Sound
[Heart_Sound,fs2] = audioread(Heart_Sound1);               % Reading the Heart Sound
t2=linspace(0,length(Heart_Sound)/fs2,length(Heart_Sound));% Time Data of Heart Sound
t22=t2';
plot(t2,Heart_Sound,"Color",[0.9290 0.6940 0.1250])        % Heart Sound in Time Domain
title(['Heart Sound with Sampling Frequency of ',num2str(fs2),' Hz'])
fs2;                                                       % Sampling Frequency of Heart Sound
subplot(4,1,4)
Heart_Noise=awgn(Heart_Sound,32);                          % Heart Sound with AWGN
Heart_Noise1=awgn(Heart_Sound,30);
Heart_length1 = length(Heart_Noise);                       % Length of Heart Sound
plot(t2,Heart_Noise,"Color",[0.4940 0.1840 0.5560]);       % Heart Sound w/ Noise in Time Domain
title(['Heart Sound with Noise with Sampling Frequency of ',num2str(fs2),' Hz'])

Audio_Heart = [t22 Heart_Sound];            % Data of Heart Sound for Simulink
Audio_Lung = [t11 Lung_Sound];              % Data of Lung Sound for Simulink
Audio_Heart_Noise = [t22 Heart_Noise];      % Data of Heart Sound with Noise for Simulink
Audio_Heart_Noise1 = [t22 Heart_Noise1];
Audio_Lung_Noise = [t11 Lung_Noise];        % Data of Lung Sound with Noise for Simulink
Audio_Lung_Noise1 = [t11 Lung_Noise1];
lambda1 = sqrt(2*log10(16))/0.6745;         % Compute for Median Absolute Deviation
lambda2 = sqrt(2*log10(16))/0.6745;         % Compute for Median Absolute Deviation

%{
%%% Statistical Analysis Codes %%%

%=====================================================================%
% Variables
%=====================================================================%
Lung_length = length(Lung_Noise);                   % N - sample size
Lung_Sound_x = Lung_Sound;                          % x(t)
Lung_Sound_y = Lung_Noise;                          % y(t)
Lung_Sound_x_Square = Lung_Sound_x.^2;              % [x(t)]^2
Lung_Sound_y_Square = Lung_Sound_y.^2;              % [y(t)]^2
diff_lung_x_y = Lung_Sound_x - Lung_Sound_y;        % x(t)-y(t)
diff_lung_x_y_sq = diff_lung_x_y.^2;                % [x(t)-y(t)]^2
Lung_Sound_xy = Lung_Sound_x.*Lung_Sound_y;         % x(t)*y(t)

Sum_Lung_Sound_x = sum(Lung_Sound_x);               % sum x(t)
Sum_Lung_Sound_y = sum(Lung_Sound_y);               % sum y(t)
Sum_Lung_Sound_xy = sum(Lung_Sound_xy);             % sum x(t)*y(t)
Sum_Lung_Sound_Square = sum(Lung_Sound_x_Square);   % sum [x(t)]^2
Sum_Lung_Noise_Square = sum(Lung_Sound_y_Square);   % sum [y(t)]^2
Sum_lung_diff_x_y_sq = sum(diff_lung_x_y_sq);       % sum [x(t)-y(t)]^2


Heart_length = length(Heart_Noise);                 % N - sample size
Heart_Sound_x = Heart_Sound;                        % x(t)
Heart_Sound_y = Heart_Noise;                        % y(t)
Heart_Sound_x_Square = Heart_Sound_x.^2;            % [x(t)]^2
Heart_Sound_y_Square = Heart_Sound_y.^2;            % [y(t)]^2
diff_heart_x_y = Heart_Sound_x - Heart_Sound_y;     % x(t)-y(t)
diff_heart_x_y_sq = diff_heart_x_y.^2;              % [x(t)-y(t)]^2
Heart_Sound_xy = Heart_Sound_x.*Heart_Sound_y;      % x(t)*y(t)

Sum_Heart_Sound_x = sum(Heart_Sound_x);             % sum x(t)
Sum_Heart_Sound_y = sum(Heart_Sound_y);             % sum y(t)
Sum_Heart_Sound_xy = sum(Heart_Sound_xy);           % sum x(t)*y(t)
Sum_Heart_Sound_Square = sum(Heart_Sound_x_Square); % sum [x(t)]^2
Sum_Heart_Noise_Square = sum(Heart_Sound_y_Square); % sum [y(t)]^2
Sum_heart_diff_x_y_sq = sum(diff_heart_x_y_sq);     % sum [x(t)-y(t)]^2


%%
%=====================================================================%
% SNR OF ORIGINAL LUNG SOUND
SNRdb_lungorig= 10*log10(Sum_Lung_Noise_Square/Sum_lung_diff_x_y_sq);
SNRdb_Lung_Sound = append('level2 db2 = ',num2str(SNRdb_lungorig),' ','dB')

%=====================================================================%
% SNR OF LUNG SOUND WITH NOISE (INPUT)
SNRdb_lungnoise = 10*log10(Sum_Lung_Sound_Square/Sum_lung_diff_x_y_sq);
SNRdb_Lung_Noise = append(num2str(SNRdb_lungnoise),' ','dB')

%=====================================================================%
% SNR OF LUNG SOUND WITHOUT NOISE (OUTPUT)

%%
%=====================================================================%
% SNR OF ORIGINAL HEART SOUND
SNRdb_heartorig= 10*log10(Sum_Heart_Noise_Square/Sum_heart_diff_x_y_sq);
SNRdb_Heart_Sound = append(num2str(SNRdb_heartorig),' ','dB')

%=====================================================================%
% SNR OF HEART SOUND WITH NOISE (INPUT)
SNRdb_heartnoise = 10*log10(Sum_Heart_Sound_Square/Sum_heart_diff_x_y_sq);
SNRdb_Heart_Noise = append(num2str(SNRdb_heartnoise),' ','dB')

%=====================================================================%
% SNR OF HEART SOUND WITHOUT NOISE (OUTPUT)

%%
%=====================================================================%
% RMS ERROR OF LUNG SOUND WITH NOISE (INPUT)
RMSE_Lung_Sound = sqrt((1/Lung_length)*Sum_lung_diff_x_y_sq)

%=====================================================================%
% RMS ERROR OF HEART SOUND WITH NOISE (INPUT)
RMSE_Heart_Sound = sqrt((1/Heart_length)*Sum_heart_diff_x_y_sq)

%=====================================================================%
% RMS ERROR OF HEART SOUND WITHOUT NOISE (OUTPUT)

%%
%=====================================================================%
% PRD OF ORIGINAL LUNG SOUND
PRD_lungorig = (sqrt(Sum_lung_diff_x_y_sq/Sum_Lung_Noise_Square))*100;
PRD_Lung_Sound = append(num2str(PRD_lungorig),'%')

%=====================================================================%
% PRD OF LUNG SOUND WITH NOISE (INPUT)
PRD_lungnoise = (sqrt(Sum_lung_diff_x_y_sq/Sum_Lung_Sound_Square))*100;
PRD_Lung_Noise = append(num2str(PRD_lungnoise),'%')

%=====================================================================%
% PRD OF LUNG SOUND WITHOUT NOISE (OUTPUT)

%%
%=====================================================================%
% PRD OF ORIGINAL LUNG SOUND
PRD_heartorig = (sqrt(Sum_heart_diff_x_y_sq/Sum_Heart_Noise_Square))*100;
PRD_Heart_Sound = append(num2str(PRD_heartorig),'%')

%=====================================================================%
% PRD OF HEART SOUND WITH NOISE (INPUT)
PRD_heartnoise = (sqrt(Sum_heart_diff_x_y_sq/Sum_Heart_Sound_Square))*100;
PRD_Heart_Noise = append(num2str(PRD_heartnoise),'%')

%=====================================================================%
% PRD OF HEART SOUND WITHOUT NOISE (OUTPUT)

%%
%=====================================================================%
% CORRELATION COEFFICIENT OF LUNG SOUND

alpha1 = Lung_length*(Sum_Lung_Sound_xy);           % n[∑x(t)y(t)]
beta1 = Sum_Lung_Sound_x*Sum_Lung_Sound_y;          % [∑x(t)][∑y(t)]
charlie1 = (Lung_length*Sum_Lung_Sound_Square)- (Sum_Lung_Sound_x)^2;
                                                    % n∑x(t)^2 - (∑x(t))^2
delta1 = (Lung_length*Sum_Lung_Noise_Square)- (Sum_Lung_Sound_y)^2;
                                                    % n∑y(t)^2 - (∑y(t))^2
CC_lung = (alpha1 - beta1)/(sqrt(charlie1*delta1))

%%
%=====================================================================%
% CORRELATION COEFFICIENT OF HEART SOUND

alpha2 = Heart_length*(Sum_Heart_Sound_xy);         % n[∑x(t)y(t)]
beta2 = Sum_Heart_Sound_x*Sum_Heart_Sound_y;        % [∑x(t)][∑y(t)]
charlie2 = (Heart_length*Sum_Heart_Sound_Square)- (Sum_Heart_Sound_x)^2;
                                                    % n∑x(t)^2 - (∑x(t))^2
delta2 = (Heart_length*Sum_Heart_Noise_Square)- (Sum_Heart_Sound_y)^2;
                                                    % n∑y(t)^2 - (∑y(t))^2
CC_heart = (alpha2 - beta2)/(sqrt(charlie2*delta2))
%}
