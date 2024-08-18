% Set up sm_abbYuMi_trajectory.slx
% Copyright 2021-2024 The MathWorks, Inc.

% Change to directory of model
cd(fileparts(which(mfilename)))

% Set path
addpath(pwd)
addpath([pwd filesep '..' filesep 'Geometry'])

% Load parameters
load sm_abbYuMi_trajectory_waypoints;
cube_l = 0.02;
brick_point_cloud = Point_Cloud_Data_Brick(cube_l, cube_l, cube_l,'full');
finger_point_cloud = sm_abbYuMi_point_cloud_finger;
segment_duration = 2;

% Open model
open_system('sm_abbYuMi_trajectory');