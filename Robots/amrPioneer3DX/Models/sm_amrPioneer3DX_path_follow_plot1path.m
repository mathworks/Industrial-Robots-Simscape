% Code to plot simulation results from sm_amrPioneer3DX_path_follow
%% Plot Description:
%
% The code below plots the waypoints and path traveled by the robot.
%
% Copyright 2021-2024 The MathWorks, Inc.

% Generate simulation results if they don't exist
if ~exist('simlog_sm_amrPioneer3DX_path_follow', 'var')
    sim('sm_amrPioneer3DX_path_follow')
end

% Reuse figure if it exists, else create new figure
if ~exist('h1_sm_amrPioneer3DX_path_follow', 'var') || ...
        ~isgraphics(h1_sm_amrPioneer3DX_path_follow, 'figure')
    h1_sm_amrPioneer3DX_path_follow = figure('Name', 'sm_amrPioneer3DX_path_follow');
end
figure(h1_sm_amrPioneer3DX_path_follow)
clf(h1_sm_amrPioneer3DX_path_follow)

temp_colororder = get(gca,'defaultAxesColorOrder');

% Get simulation results
simlog_t = simlog_sm_amrPioneer3DX_path_follow.Robot.x6_DOF_Joint_Chassis.Px.p.series.time;
end_time = simlog_t(end);
simlog_px = simlog_sm_amrPioneer3DX_path_follow.Robot.x6_DOF_Joint_Chassis.Px.p.series.values('m');
simlog_py = simlog_sm_amrPioneer3DX_path_follow.Robot.x6_DOF_Joint_Chassis.Py.p.series.values('m');

% Plot results
%simlog_handles(1) = subplot(2, 1, 1);
plot(waypoints(:,1), waypoints(:,2),'k--x','LineWidth', 1)
hold on
plot(simlog_px, simlog_py, 'LineWidth', 1)
hold off
title('Robot Path')
xlabel('Position (m)')
ylabel('Position (m)')
legend({'Waypoints','Robot Path'},'Location','Best');
xlim = get(gca,'XLim');
ylim = get(gca,'YLim');
set(gca,'XLim',xlim+[-1 1]*0.05*(xlim(2)-xlim(1)));
set(gca,'YLim',ylim+[-1 1]*0.05*(ylim(2)-ylim(1)));

% Remove temporary variables
% - do not remove, used by parameter sweep

