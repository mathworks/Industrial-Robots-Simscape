% Script to import sm_amrPioneer3AT.urdf
% Copyright 2021-2025 The MathWorks, Inc.

%% Import URDF file to create Simscape Multibody model
addpath([pwd filesep 'Geometry']);
[mdl_h] = smimport('sm_amrPioneer3AT.urdf','ModelName','sm_amrPioneer3AT_1_RawImport');
mdl_name = getfullname(mdl_h);

%% Update diagram, note initial robot position
set_param(mdl_h,'SimulationCommand','update')

