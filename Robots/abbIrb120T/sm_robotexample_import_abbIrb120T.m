% Script to import sm_abbIrb120T.urdf
% Copyright 2021-2022 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_abbIrb120T.urdf','ModelName','sm_abbIrb120T_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')

