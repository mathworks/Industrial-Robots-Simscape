function [xy_data] = Extr_Data_Waypoints(xy_waypoints,path_width,varargin)
%Extr_Data_Waypoints Produce extrusion data for 2D path defined by waypoints
%   [xy_data] = Extr_Data_Waypoints(xy_waypoints,path_width,varargin)
%   This function returns x-y data for a 2D path defined by waypoints.
%   You can specify:
%       xy_waypoints        Matrix of x-y values for points
%                           Path is in order of definition.
%                           If the path crosses itself, data will not be
%                           valid for use with Simscape Multibody general
%                           extrusion
%       path_width          Width of path
%
%   To see a plot showing parameter values, enter the name
%   of the function with no arguments
%   >> Extr_Data_Waypoints
%
%   To see a plot created with your parameter values,
%   add 'plot' as the final argument
%   >> Extr_Data_Waypoints([1 1;2 2;-1 1;0 -1],0.1,'plot')

% Copyright 2021-2024 The MathWorks, Inc.

% Default data to show diagram
if (nargin == 0)
    xy_waypoints = [ ...
         1 1;
         2 2;
         0 3;
         0 2;
        -2 2;
        -1 1];
    path_width   = 0.1;
end

% Check if plot should be produced
if (isempty(varargin))
    showplot = 'n';
else
    showplot = varargin;
end

% Determine angles of each segment
angles = unwrap(atan2(diff(xy_waypoints(:,2)),diff(xy_waypoints(:,1))));

% Angle at first point is angle of first segment
angles = [angles;angles(end,:)];

% Angle of offset for left and right points
offset_angles = angles - angles/2 + circshift(angles,1)/2-pi/2;
offset_angles(1) = angles(1)-pi/2;

% Difference in angles needed for offset distance
angle_diff = (circshift(angles,1)- angles)/2;
angle_diff(1) = 0; 

% Create xy data for line on right side of path defined by waypoints
xy_offset_r = [cos(offset_angles) +sin(offset_angles)]*path_width/2./abs(cos(angle_diff));
xy_right = xy_waypoints + xy_offset_r;

% Create xy data for line on left side of path defined by waypoints
xy_offset_l = [cos(offset_angles+pi) +sin(offset_angles+pi)]*path_width/2./abs(cos(angle_diff));
xy_left  = xy_waypoints + xy_offset_l;

% Data created in counter clockwise order
xy_data = [xy_right;flipud(xy_left)];

% Plot diagram to show parameters and extrusion
if (nargin == 0 || strcmpi(showplot,'plot'))
    
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
    plot(xy_waypoints(:,1),xy_waypoints(:,2),'-x','LineWidth',1,'DisplayName','Waypoints');
    hold on;
    plot(xy_right(:,1),xy_right(:,2),'-o','LineWidth',1,'DisplayName','Right Edge');
    plot(xy_left(:,1),xy_left(:,2),'-o','LineWidth',1,'DisplayName','Left Edge');
    hold off; axis equal
    title(['[xy\_data] = Extr\_Data\_Waypoints(xy\_waypoints,path\_width);']);
    hold off
    box on
    clear xy_data
    xlim = get(gca,'XLim');
    ylim = get(gca,'YLim');
    set(gca,'XLim',xlim+[-1 1]*0.05*(xlim(2)-xlim(1)));
    set(gca,'YLim',ylim+[-1 1]*0.05*(ylim(2)-ylim(1)));
end


