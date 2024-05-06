Stat_block_signal = out.Stat_block_signal;
Stat_block_signal(:,1) = [];
%plot(Detailed_signal)

Median_signal = out.Median_block_signal;
Median_signal(:,1) = [];
%plot(Abs_signal)

Median_length = length(Median_signal);
Stat_block_signal_x = Stat_block_signal;                        % x(t)
Median_signal_y = Median_signal;                                % y(t)
Stat_block_signal_x_Square = Stat_block_signal_x.^2;            % [x(t)]^2
Median_signal_y_Square = Median_signal_y.^2;                    % [y(t)]^2
diff_sound_x_y = Stat_block_signal_x - Median_signal_y;         % x(t)-y(t)
diff_sound_x_y_sq = diff_sound_x_y.^2;                          % [x(t)-y(t)]^2
Sound_xy = Stat_block_signal_x.*Median_signal_y;                % x(t)*y(t)

Sum_Stat_block_signal_x = sum(Stat_block_signal_x);             % sum x(t)
Sum_Median_signal_y = sum(Median_signal_y);                     % sum y(t)
Sum_Sound_xy = sum(Sound_xy);                                   % sum x(t)*y(t)
Sum_Stat_block_signal_Square = sum(Stat_block_signal_x_Square); % sum [x(t)]^2
Sum_Median_signal_Square = sum(Median_signal_y_Square);         % sum [y(t)]^2
Sum_sound_diff_x_y_sq = sum(diff_sound_x_y_sq);                 % sum [x(t)-y(t)]^2

alpha2 = Median_length*(Sum_Sound_xy);                          % n[∑x(t)y(t)]
beta2 = Sum_Stat_block_signal_x*Sum_Median_signal_y;            % [∑x(t)][∑y(t)]
charlie2 = (Median_length*Sum_Stat_block_signal_Square)- (Sum_Stat_block_signal_x)^2;
                                                                % n∑x(t)^2 - (∑x(t))^2
delta2 = (Median_length*Sum_Median_signal_Square)- (Sum_Median_signal_y)^2;
                                                                % n∑y(t)^2 - (∑y(t))^2
CC = (alpha2 - beta2)/(sqrt(charlie2*delta2))


scatter(Median_signal,Stat_block_signal,40,'MarkerEdgeColor',[0 .5 .5],...
              'MarkerFaceColor',[0 .7 .7],...
              'LineWidth',1.5)
%{
line = Stat_block_signal_x./Median_signal_y;
yCalc1 = line.*Stat_block_signal_x;
hold on
plot(Stat_block_signal_x,yCalc1, 'LineWidth',3)
%}
              
xlabel('Median of the Signal from Median Statistics Block');
ylabel('Median of the Signal from Median Architecture');
title(['Pearson Correlation Coefficient of Median Block r = ', num2str(CC)])
grid on