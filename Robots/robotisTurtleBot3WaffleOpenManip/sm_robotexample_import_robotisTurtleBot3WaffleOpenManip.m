% Script to import sm_robotisTurtleBot3WaffleOpenManip.urdf
% Copyright 2021-2025 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_robotisTurtleBot3WaffleOpenManip.urdf','ModelName','sm_robotisTurtleBot3WaffleOpenManip_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')
