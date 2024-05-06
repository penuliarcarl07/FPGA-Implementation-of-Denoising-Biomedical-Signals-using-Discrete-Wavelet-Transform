Detailed_signal = out.Detailed_signal;
Detailed_signal(:,1) = [];
%plot(Detailed_signal)

Abs_signal = out.Absolute_signal;
Abs_signal(:,1) = [];
%plot(Abs_signal)

Detailed_length = length(Detailed_signal);
Detailed_x = Detailed_signal;                     % x(t)
Abs_y = Abs_signal;                               % y(t)
Detailed_x_Square = Detailed_x.^2;                % [x(t)]^2
Abs_y_Square = Abs_y.^2;                          % [y(t)]^2
diff_sound_x_y = Detailed_x - Abs_y;              % x(t)-y(t)
diff_sound_x_y_sq = diff_sound_x_y.^2;            % [x(t)-y(t)]^2
Sound_xy = Detailed_x.*Abs_y;                     % x(t)*y(t)

Sum_Detailed_x = sum(Detailed_x);                 % sum x(t)
Sum_Abs_y = sum(Abs_y);                           % sum y(t)
Sum_Sound_xy = sum(Sound_xy);                     % sum x(t)*y(t)
Sum_Detailed_Square = sum(Detailed_x_Square);     % sum [x(t)]^2
Sum_Abs_Square = sum(Abs_y_Square);               % sum [y(t)]^2
Sum_sound_diff_x_y_sq = sum(diff_sound_x_y_sq);   % sum [x(t)-y(t)]^2

alpha2 = Detailed_length*(Sum_Sound_xy);         % n[∑x(t)y(t)]
beta2 = Sum_Detailed_x*Sum_Abs_y;        % [∑x(t)][∑y(t)]
charlie2 = (Detailed_length*Sum_Detailed_Square)- (Sum_Detailed_x)^2;
                                                    % n∑x(t)^2 - (∑x(t))^2
delta2 = (Detailed_length*Sum_Abs_Square)- (Sum_Abs_y)^2;
                                                    % n∑y(t)^2 - (∑y(t))^2
CC = (alpha2 - beta2)/(sqrt(charlie2*delta2))

scatter(Detailed_signal,Abs_signal,40,'MarkerEdgeColor',[0 .5 .5],...
              'MarkerFaceColor',[0 .7 .7],...
              'LineWidth',1.5)
xlabel('Detailed Signal');
ylabel('Absolute Value of Signal');
title(['Pearson Correlation Coefficient of Absolute Value Block r = ', num2str(CC)])