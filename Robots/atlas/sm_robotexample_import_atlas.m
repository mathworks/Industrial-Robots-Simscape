% Script to import sm_atlas.urdf
% Copyright 2021 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_atlas.urdf','ModelName','sm_atlas_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')
