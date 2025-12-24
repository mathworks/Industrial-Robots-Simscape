% Code to plot simulation results from sm_abbYuMi_trajectory
%% Plot Description:
%
% Plots path and vertical speed of boxes
%
% Copyright 2021-2025 The MathWorks, Inc.

% Generate simulation results if they don't exist
if ~exist('simlog_sm_abbYuMi_trajectory', 'var')
    sim('sm_abbYuMi_trajectory')
end

% Reuse figure if it exists, else create new figure
if ~exist('h1_sm_abbYuMi_trajectory', 'var') || ...
        ~isgraphics(h1_sm_abbYuMi_trajectory, 'figure')
    h1_sm_abbYuMi_trajectory = figure('Name', 'sm_abbYuMi_trajectory');
end
figure(h1_sm_abbYuMi_trajectory)
clf(h1_sm_abbYuMi_trajectory)

temp_colororder = get(gca,'defaultAxesColorOrder');

% Get simulation results
simlog_t = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_1.Pz.p.series.time;
simlog_box1x = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_1.Px.p.series.values('m');
simlog_box1y = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_1.Py.p.series.values('m');
simlog_box1z = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_1.Pz.p.series.values('m');

simlog_box2x = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_2.Px.p.series.values('m');
simlog_box2y = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_2.Py.p.series.values('m');
simlog_box2z = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_2.Pz.p.series.values('m');

simlog_box1vx = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_1.Px.v.series.values('m/s');
simlog_box1vy = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_1.Py.v.series.values('m/s');
simlog_box1vz = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_1.Pz.v.series.values('m/s');

simlog_box2vx = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_2.Px.v.series.values('m/s');
simlog_box2vy = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_2.Py.v.series.values('m/s');
simlog_box2vz = simlog_sm_abbYuMi_trajectory.Robot.x6_DOF_Joint_Block_2.Pz.v.series.values('m/s');


% Plot results
simlog_handles(1) = subplot(2, 1, 1);
plot3(simlog_box1x, simlog_box1y, simlog_box1z, 'LineWidth', 1)
hold on
plot3(simlog_box2x, simlog_box2y, simlog_box2z, 'LineWidth', 1)
hold off
grid on
title('Box Trajectory')
legend({'Box 1','Box 2'},'Location','Best');

simlog_handles(2) = subplot(2, 1, 2);
plot(simlog_t, simlog_box1vz, 'LineWidth', 1)
hold on
plot(simlog_t, simlog_box2vz, 'LineWidth', 1)
hold off
grid on
title('Box Vertical Speeds')
xlabel('Time (s)')
ylabel('Speed (m/s)');
% Remove temporary variables
clear simlog_t simlog_handles
clear simlog_R1i simlog_C1v temp_colororder

