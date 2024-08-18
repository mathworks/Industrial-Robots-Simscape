function pointcloud = sm_abbYuMi_point_cloud_finger(varargin)
%% Read in Steering Wheel STL file
% Copyright 2021-2024 The MathWorks, Inc.
stlfilename = 'abbyumi_finger.stl';
finger_ptCloud = stlread('abbyumi_finger.stl');

% Check if plot should be produced
if (isempty(varargin))
    showplot = 'n';
else
    showplot = varargin;
end
x_inds = find(abs(finger_ptCloud.Points(:,1))<1e-8);
z_inds = find(...
    (finger_ptCloud.Points(:,3)>0.04));
pt_inds_full = intersect(x_inds,z_inds);
pt_inds = pt_inds_full(1:5:end);

pointcloud = finger_ptCloud.Points(pt_inds,:);

% Plot diagram to show parameters and extrusion
if (strcmpi(showplot,'plot'))
    
    % Figure name
    figString = ['h1_' mfilename];
    % Only create a figure if no figure exists
    figExist = 0;
    fig_hExist = evalin('base',['exist(''' figString ''')']);
    if (fig_hExist)
        figExist = evalin('base',['ishandle(' figString ') && strcmp(get(' figString ', ''type''), ''figure'')']);
    end
    if ~figExist
        fig_h = figure('Name',figString);
        assignin('base',figString,fig_h);
    else
        fig_h = evalin('base',figString);
    end
    figure(fig_h)
    clf(fig_h)
    
    trimesh(finger_ptCloud)
    hold on
    plot3(finger_ptCloud.Points(pt_inds,1),finger_ptCloud.Points(pt_inds,2),finger_ptCloud.Points(pt_inds,3),'ro','MarkerFaceColor','r');
    text(finger_ptCloud.Points(pt_inds,1),finger_ptCloud.Points(pt_inds,2),finger_ptCloud.Points(pt_inds,3),strsplit(num2str(1:length(pt_inds))))
    hold off
    axis equal
    ax = gca;               % get the current axis
    ax.Clipping = 'off';    % turn clipping off
    title(['Point Cloud for ' strrep(stlfilename,'_','\_')]);
    box on
end

pointcloud = finger_ptCloud.Points(pt_inds,:);