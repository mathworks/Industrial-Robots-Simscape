function sm_industrial_robots_import(robotname,robotaction)
% Script to handle executing or editing specific URDF import scripts
% Copyright 2021-2023 The MathWorks, Inc.

cd(fileparts(which('startup_sm_industrial_robots.m')));
smri_file_f = dir(['Robots' filesep robotname filesep 'sm_robotexample_import*.m']);

% Import/Edit custom script that makes necessary adjustments to model
if(~isempty(smri_file_f))
    cd(smri_file_f.folder)
    if(strcmpi(robotaction,'edit'))
        edit(smri_file_f.name)
    elseif(strcmpi(robotaction,'import'))
        run(smri_file_f.name)
    elseif(strcmpi(robotaction,'image'))
        web(['sm_' robotname '.png'])
    end
elseif(isfolder(robotname))
    % Import/Edit URDF file
    cd(robotname)
    urdf_file = [robotname '.urdf'];
    if(strcmpi(robotaction,'edit'))
        edit(urdf_file)
    elseif(strcmpi(robotaction,'import'))
        smimport(urdf_file)
    end
end


