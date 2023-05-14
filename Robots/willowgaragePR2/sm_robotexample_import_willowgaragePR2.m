% Script to import sm_willowgaragePR2.urdf
% Copyright 2021-2023 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_willowgaragePR2.urdf','ModelName','sm_willowgaragePR2_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')

