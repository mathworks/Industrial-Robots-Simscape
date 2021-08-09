% Script to import sm_kinovaJacoTwoArmExample.urdf
% Copyright 2021 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_kinovaJacoTwoArmExample.urdf','ModelName','sm_kinovaJacoTwoArmExample_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')

%% Adjust joint targets for valid initial position
set_param([mdl_name '/left_joint_2'],'PositionTargetSpecify','on','PositionTargetValue','180','PositionTargetValueUnits','deg')
set_param([mdl_name '/left_joint_3'],'PositionTargetSpecify','on','PositionTargetValue','180','PositionTargetValueUnits','deg')
set_param([mdl_name '/right_joint_2'],'PositionTargetSpecify','on','PositionTargetValue','180','PositionTargetValueUnits','deg')
set_param([mdl_name '/right_joint_3'],'PositionTargetSpecify','on','PositionTargetValue','180','PositionTargetValueUnits','deg')

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')


