
%%
% NOTE 1!!
% Please comment out either Stats for Heart or Stats Lung Sound when
% running one simulation for one input sound in Simulink

% Use " %{ " in the start of the code when commenting out and 
% end with " %} " and then of the code you want to comment out
% Remove the comment out when the simulatiuon is done, and comment out the
% other when simulation is done

% NOTE 2!!
% Change all the value of wavelet functions and their corresponding levels
% Example: Heart_level4_db2
% All declaration seen in this code similar to that is subjected to change 
% when dealing with other wavelet functions and their level

% NOTE 3!!
% Triple check :)

%=====================================================================%
% STATISTICS FOR HEART SOUND
%=====================================================================%

%Original Heart Sound With Noise
Orig_Heart_Noise = out.Orig_Heart_Noise;  
%TAKE NOTE: Orig_Heart_Noise should be same with the name in Scope
Orig_Heart_Noise(:,1) = [];

%Reconstructed Heart Sound
Heart_level2_db2 = out.Recon_Heart_lvl2_db2;
%TAKE NOTE: Recon_Heart_lvl2_db2 should be same with the name in Scope
Heart_level2_db2(:,1) = [];

%=====================================================================%
% VARIABLES FOR HEART SOUND

Heart_Noise_length = length(Orig_Heart_Noise);            % N - sample size
Heart_Noise_x = Orig_Heart_Noise;                         % x(t) - HS w/ Noise
Heart_Denoised_y = Heart_level2_db2;                      % y(t) - HS denoised
Heart_Noise_x_Square = Heart_Noise_x.^2;                  % [x(t)]^2
Heart_Denoised_y_Square = Heart_Denoised_y.^2;            % [y(t)]^2
diff_Heart_x_y = Heart_Noise_x - Heart_Denoised_y;        % x(t)-y(t)
diff_Heart_x_y_sq = diff_Heart_x_y.^2;                    % [x(t)-y(t)]^2
Heart_xy = Heart_Noise_x.*Heart_Denoised_y;               % x(t)*y(t)

Sum_Heart_Noise_x = sum(Heart_Noise_x);                   % sum x(t)
Sum_Heart_Denoised_y = sum(Heart_Denoised_y);             % sum y(t)
Sum_Heart_xy = sum(Heart_xy);                             % sum x(t)*y(t)
Sum_Heart_Noise_Square = sum(Heart_Noise_x_Square);       % sum [x(t)]^2
Sum_Heart_Denoised_Square = sum(Heart_Denoised_y_Square); % sum [y(t)]^2
Sum_Heart_diff_x_y_sq = sum(diff_Heart_x_y_sq);           % sum [x(t)-y(t)]^2

%=====================================================================%
% SNR OF DENOISED HEART SOUND (OUTPUT)
SNRdB_Heart_denoised= 10*log10(Sum_Heart_Noise_Square/Sum_Heart_diff_x_y_sq);
SNRdB_Heart_Sound = append('level2 db2 = ',num2str(SNRdB_Heart_denoised),' ','dB')

%=====================================================================%
% RMS ERROR OF DENOISED HEART SOUND (OUTPUT)
RMSE_Heart_denoised = sqrt((1/Heart_Noise_length)*Sum_Heart_diff_x_y_sq);
RMSE_Heart_Sound = append('level2 db2 = ',num2str(RMSE_Heart_denoised))

%=====================================================================%
% PRD OF DENOISED HEART SOUND
PRD_Heart_denoised = (sqrt(Sum_Heart_diff_x_y_sq/Sum_Heart_Noise_Square))*100;
PRD_Heart_Sound = append('level2 db2 = ',num2str(PRD_Heart_denoised),'%')

%=====================================================================%
% CORRELATION COEFFICIENT OF HEART SOUND

alpha1 = Heart_Noise_length*(Sum_Heart_xy);         % n[∑x(t)y(t)]
beta1 = Sum_Heart_Noise_x*Sum_Heart_Denoised_y;        % [∑x(t)][∑y(t)]
charlie1 = (Heart_Noise_length*Sum_Heart_Noise_Square)- (Sum_Heart_Noise_x)^2;
                                                    % n∑x(t)^2 - (∑x(t))^2
delta1 = (Heart_Noise_length*Sum_Heart_Denoised_Square)- (Sum_Heart_Denoised_y)^2;
                                                    % n∑y(t)^2 - (∑y(t))^2
CC_heart = (alpha1 - beta1)/(sqrt(charlie1*delta1));
CC_Heart_Sound = append('r of level2 db2 = ',num2str(CC_heart))

figure(1)
scatter(Orig_Heart_Noise,Heart_level2_db2,40,'MarkerEdgeColor',[0 .5 .5],...
              'MarkerFaceColor',[0 .7 .7],...
              'LineWidth',1.5)
xlabel('Original Heart Sound with Noise');
ylabel('Reconstructed Heart Sound using db2 2 levels');
title(['Pearson Correlation Coefficient of Heart Sound with r of level 2 db2 = ', num2str(CC_heart)])

%{
%%
%=====================================================================%
% STATISTICS FOR LUNG SOUND
%=====================================================================%

%Original Lung Sound With Noise
Orig_Lung_Noise = out.Orig_Lung_Noise;  

%TAKE NOTE: Orig_Lung_Noise should be same with the name in Scope
Orig_Lung_Noise(:,1) = [];

%Reconstructed Lung Sound
Lung_level2_db2 = out.Recon_Lung_lvl2_db2;

%TAKE NOTE: Recon_Lung_lvl2_db2 should be same with the name in Scope
Lung_level2_db2(:,1) = [];

%=====================================================================%
% VARIABLES FOR LUNG SOUND

Lung_Noise_length = length(Orig_Lung_Noise);            % N - sample size
Lung_Noise_x = Orig_Lung_Noise;                         % x(t) - LS w/ Noise
Lung_Denoised_y = Lung_level2_db2;                      % y(t) - LS denoised
Lung_Noise_x_Square = Lung_Noise_x.^2;                  % [x(t)]^2
Lung_Denoised_y_Square = Lung_Denoised_y.^2;            % [y(t)]^2
diff_lung_x_y = Lung_Noise_x - Lung_Denoised_y;         % x(t)-y(t)
diff_lung_x_y_sq = diff_lung_x_y.^2;                    % [x(t)-y(t)]^2
Lung_xy = Lung_Noise_x.*Lung_Denoised_y;                % x(t)*y(t)

Sum_Lung_Noise_x = sum(Lung_Noise_x);                   % sum x(t)
Sum_Lung_Denoised_y = sum(Lung_Denoised_y);             % sum y(t)
Sum_Lung_xy = sum(Lung_xy);                             % sum x(t)*y(t)
Sum_Lung_Noise_Square = sum(Lung_Noise_x_Square);       % sum [x(t)]^2
Sum_Lung_Denoised_Square = sum(Lung_Denoised_y_Square); % sum [y(t)]^2
Sum_lung_diff_x_y_sq = sum(diff_lung_x_y_sq);           % sum [x(t)-y(t)]^2

%=====================================================================%
% SNR OF DENOISED LUNG SOUND (OUTPUT)
SNRdB_Lung_denoised= 10*log10(Sum_Lung_Noise_Square/Sum_lung_diff_x_y_sq);
SNRdB_Lung_Sound = append('level2 db2 = ',num2str(SNRdB_Lung_denoised),' ','dB')
 
%=====================================================================%
% RMS ERROR OF DENOISED LUNG SOUND (OUTPUT)
RMSE_Lung_denoised = sqrt((1/Lung_Noise_length)*Sum_lung_diff_x_y_sq);
RMSE_Lung_Sound = append('level2 db2 = ',num2str(RMSE_Lung_denoised))

%=====================================================================%
% PRD OF DENOISED LUNG SOUND
PRD_Lung_denoised = (sqrt(Sum_lung_diff_x_y_sq/Sum_Lung_Noise_Square))*100;
PRD_Lung_Sound = append('level2 db2 = ',num2str(PRD_Lung_denoised),'%')

%=====================================================================%
% CORRELATION COEFFICIENT OF LUNG SOUND

alpha2 = Lung_Noise_length*(Sum_Lung_xy);         % n[∑x(t)y(t)]
beta2 = Sum_Lung_Noise_x*Sum_Lung_Denoised_y;        % [∑x(t)][∑y(t)]
charlie2 = (Lung_Noise_length*Sum_Lung_Noise_Square)- (Sum_Lung_Noise_x)^2;
                                                    % n∑x(t)^2 - (∑x(t))^2
delta2 = (Lung_Noise_length*Sum_Lung_Denoised_Square)- (Sum_Lung_Denoised_y)^2;
                                                    % n∑y(t)^2 - (∑y(t))^2
CC_lung = (alpha2 - beta2)/(sqrt(charlie2*delta2));
CC_Lung_Sound = append('r of level2 db2 = ',num2str(CC_lung))

figure(2)
scatter(Orig_Lung_Noise,Lung_level2_coif2,40,'MarkerEdgeColor',[0 .5 .5],...
              'MarkerFaceColor',[0 .7 .7],...
              'LineWidth',1.5)
xlabel('Original Lung Sound with Noise');
ylabel('Reconstructed Lung Sound using db2 2 levels');
title(['Pearson Correlation Coefficient of Lung Sound with r of level 2 db2 ', num2str(CC_lung)])
%%%
%}