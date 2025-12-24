% Script to import sm_abbYuMi.urdf
% Copyright 2021-2025 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_abbYuMi.urdf','ModelName','sm_abbYuMi_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')

%% Adjust joint targets for valid initial position
set_param([mdl_name '/yumi_joint_1_r'],'PositionTargetSpecify','on','PositionTargetValue','-45','PositionTargetValueUnits','deg')
set_param([mdl_name '/yumi_joint_1_l'],'PositionTargetSpecify','on','PositionTargetValue','45','PositionTargetValueUnits','deg')

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')

