function sm_amrPioneer3DX_path_follow_sweep(mdl,sweep_type)
% Code to sweep control parameters from sm_amrPioneer3DX_path_follow
% Pass string 'Speed', 'Lookahead', or 'Max Yaw Rate' to sweep that
% parameter
%
% Copyright 2021-2022 The MathWorks, Inc.

open_system(mdl);

% Set parameters to be variables
set_param([mdl '/Pure Pursuit'],'DesiredLinearVelocity','target_vel');
set_param([mdl '/Pure Pursuit'],'LookaheadDistance','lookahead_d');
set_param([mdl '/Pure Pursuit'],'MaxAngularVelocity','max_yaw_rate');

% Set parameters to be variables
target_vel_set   = linspace(0.5,0.8,10);
lookahead_d_set  = linspace(0.5,2,10);
max_yaw_rate_set = linspace(0.1,0.7,10);

% Set default values in workspace
assignin('base','target_vel',target_vel_set(1));
assignin('base','lookahead_d',lookahead_d_set(end));
assignin('base','max_yaw_rate',1);

if(strcmp(sweep_type,'Speed'))
    sweep_param = 'Speed';
    p1 = target_vel_set(1);
    p2 = target_vel_set(end);
elseif(strcmp(sweep_type,'Lookahead'))
    sweep_param = 'Lookahead Distance';
    p1 = lookahead_d_set(1);
    p2 = lookahead_d_set(end);
elseif(strcmp(sweep_type,'Max Yaw Rate'))
    sweep_param = 'Max Yaw Rate';
    p1 = max_yaw_rate_set(1);
    p2 = max_yaw_rate_set(end);
end

% Reuse figure if it exists, else create new figure
% Figure name
figString = ['h1_' mfilename];
% Only create a figure if no figure exists
figExist = 0;
fig_hExist = evalin('base',['exist(''' figString ''')']);
if (fig_hExist)
    figExist = evalin('base',['ishandle(' figString ') && strcmp(get(' figString ', ''type''), ''figure'')']);
end
if ~figExist
    fig_h = figure('Name',figString);
    assignin('base',figString,fig_h);
else
    fig_h = evalin('base',figString);
end
figure(fig_h)
clf(fig_h)

waypoints = evalin('base','waypoints');
figure(fig_h)
plot(waypoints(:,1), waypoints(:,2),'k--x','LineWidth', 1,'DisplayName','Waypoints');
sweep_h = gca;
hold(sweep_h,'on');

set_param(mdl,'FastRestart','on');
for i = 1:length(target_vel_set)
    
    % Assign value for requested sweep variable in workspace
    if(strcmp(sweep_type,'Speed'))
        assignin('base','target_vel',target_vel_set(i));
    elseif(strcmp(sweep_type,'Lookahead'))
        assignin('base','lookahead_d',lookahead_d_set(i));
    elseif(strcmp(sweep_type,'Max Yaw Rate'))
        assignin('base','max_yaw_rate',max_yaw_rate_set(i));
    end
    
    out=sim(mdl);
    
    simlog_sm_amrPioneer3DX_path_follow = out.simlog_sm_amrPioneer3DX_path_follow;
    assignin('base','simlog_sm_amrPioneer3DX_path_follow',simlog_sm_amrPioneer3DX_path_follow);
    sm_amrPioneer3DX_path_follow_plot1path
    
    simlog_t = simlog_sm_amrPioneer3DX_path_follow.Robot.x6_DOF_Joint_Chassis.Px.p.series.time;
    end_time = simlog_t(end);
    simlog_px = simlog_sm_amrPioneer3DX_path_follow.Robot.x6_DOF_Joint_Chassis.Px.p.series.values('m');
    simlog_py = simlog_sm_amrPioneer3DX_path_follow.Robot.x6_DOF_Joint_Chassis.Py.p.series.values('m');
    
    figure(fig_h)
    hold(sweep_h,'on');
    plot(simlog_px, simlog_py, 'LineWidth', 1,'DisplayName',['Test ' num2str(i) ', ' sprintf('%2.2f sec',end_time)]);
end
set_param(mdl,'FastRestart','off');
hold(sweep_h,'off');

% Put plot in center of axes
xlim = get(gca,'XLim');
ylim = get(gca,'YLim');
set(gca,'XLim',xlim+[-1 1]*0.05*(xlim(2)-xlim(1)));
set(gca,'YLim',ylim+[-1 1]*0.05*(ylim(2)-ylim(1)));

legend('Location','Best')
title(['Sweep ' sweep_param ' ' sprintf('%1.2f - %1.2f',p1,p2)]);

