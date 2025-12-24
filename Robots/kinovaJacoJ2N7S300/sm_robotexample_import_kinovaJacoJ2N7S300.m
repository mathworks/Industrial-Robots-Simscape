% Script to import and set initial position of sm_kinovaJacoJ2N7S300.urdf
% Copyright 2021-2025 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_kinovaJacoJ2N7S300.urdf','ModelName','sm_kinovaJacoJ2N7S300_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')

%% Adjust joint targets for valid initial position
set_param([mdl_name '/j2n7s300_joint_2'],'PositionTargetSpecify','on','PositionTargetValue','180','PositionTargetValueUnits','deg')
set_param([mdl_name '/j2n7s300_joint_4'],'PositionTargetSpecify','on','PositionTargetValue','180','PositionTargetValueUnits','deg')

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')


