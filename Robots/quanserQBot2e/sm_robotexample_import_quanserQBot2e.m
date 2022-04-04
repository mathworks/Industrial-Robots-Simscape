% Script to import and set initial position of sm_quanserQBot2e.urdf
% Copyright 2021-2022 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_quanserQBot2e.urdf','ModelName','sm_quanserQBot2e_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')

