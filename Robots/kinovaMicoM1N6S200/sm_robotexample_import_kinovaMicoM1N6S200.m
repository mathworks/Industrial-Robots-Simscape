% Script to import and set initial position of sm_kinovaMicoM1N6S200.urdf
% Copyright 2021 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_kinovaMicoM1N6S200.urdf','ModelName','sm_kinovaMicoM1N6S200_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')

%% Adjust joint targets for valid initial position
set_param([mdl_name '/m1n6s200_joint_2'],'PositionTargetSpecify','on','PositionTargetValue','180','PositionTargetValueUnits','deg')
set_param([mdl_name '/m1n6s200_joint_3'],'PositionTargetSpecify','on','PositionTargetValue','180','PositionTargetValueUnits','deg')

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')


