function ptcld = Point_Cloud_Data_Brick(x,y,z,pointset,varargin)
%Point_Cloud_Data_Brick Produce point cloud for exterior surface of a brick
%   [ptcld] = Point_Cloud_Data_Brick(x,y,z)
%
%   You can specify:
%       x         length along (first column of ptcld)
%       y         length along (second column of ptcld)
%       z         length along (third column of ptcld)
%       pointset  'full':    corners, edges, and faces
%                 'corners': corners only
%   Point cloud data will be centered at [0,0,0]
%
% Copyright 2021-2024 The MathWorks, Inc.

% Default data to show diagram
if (nargin == 0)
    x = 3;
    y = 2;
    z = 1;
    pointset = 'full';
end

% Check if plot should be produced
if (isempty(varargin))
    showplot = 'n';
else
    showplot = varargin;
end

ptcld_corners = [...
    1  -1  -1;
    1   1  -1;
    -1  -1  -1;
    -1   1  -1;
    1  -1   1;
    1   1   1;
    -1  -1   1;
    -1   1   1;
    ];

ptcld_face_ctr = [...
    1   0   0;
    -1   0   0;
    0  -1   0;
    0   1   0;
    0   0  -1;
    0   0   1;
    ];

ptcld_edges = [...
    1  -1   0;
    1   1   0;
    -1  -1   0;
    -1   1   0;
    1   0   1;
    -1   0   1;
    1   0  -1;
    -1   0  -1;
    0  -1  -1;
    0   1  -1;
    0  -1   1;
    0   1   1;
    ];

ptcld_faces = [...
    1    0.5   0.5;
    1    0.5  -0.5;
    1   -0.5   0.5;
    1   -0.5  -0.5;
    -1    0.5   0.5;
    -1    0.5  -0.5;
    -1   -0.5   0.5;
    -1   -0.5  -0.5;
    0.5  1     0.5;
    0.5  1    -0.5;
    -0.5  1     0.5;
    -0.5  1    -0.5;
    0.5 -1     0.5;
    0.5 -1    -0.5;
    -0.5 -1     0.5;
    -0.5 -1    -0.5;
    0.5   0.5  1;
    0.5  -0.5  1;
    -0.5   0.5  1;
    -0.5  -0.5  1;
    0.5   0.5 -1;
    0.5  -0.5 -1;
    -0.5   0.5 -1;
    -0.5  -0.5 -1;
    ];

switch pointset
    case 'full'
        ptcld = [...
            ptcld_corners
            ptcld_face_ctr
            ptcld_edges
            ptcld_faces].*[x y z]/2;
    case 'corners'
        ptcld = [...
            ptcld_corners].*[x y z]/2;
end

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
    
    temp_colororder = get(gca,'defaultAxesColorOrder');
    
    plot3(ptcld(:,1),ptcld(:,2),ptcld(:,3),'o','MarkerFaceColor',temp_colororder(2,:))
    hold on
    
    xlabel(['x = ' num2str(x)],'Color','r');
    ylabel(['y = ' num2str(y)],'Color','g');
    zlabel(['z = ' num2str(z)],'Color','b');
    
    DT = delaunayTriangulation(ptcld);
    [K,~] = convexHull(DT);
    trisurf(K,DT.Points(:,1),DT.Points(:,2),DT.Points(:,3),'FaceColor',[0.6 0.6 0.9],'EdgeColor',[0.6 0.6 0.9],'FaceAlpha',0.3)
    
    title(['[ptcld] = Point\_Cloud\_Data\_Brick(x, y, z, pointset);']);
    hold off
    box on
    axis equal
    grid off
end