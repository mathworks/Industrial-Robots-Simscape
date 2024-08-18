% Set up sm_amrPioneer3DX_path_follow_elec.slx
% Copyright 2021-2024 The MathWorks, Inc.

% Change to directory of model
cd(fileparts(which(mfilename)))

% Set path
addpath(pwd)
addpath([pwd filesep '..' filesep 'Geometry'])

% Open model
open_system('sm_amrPioneer3DX_path_follow_elec');