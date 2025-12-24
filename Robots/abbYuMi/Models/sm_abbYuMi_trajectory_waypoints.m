%% Generate joint angle waypoints for sm_abbYuMi model using inverse kinematics
% Copyright 2021-2025 The MathWorks, Inc.

%% Load model and generate kinematic solver object
sys = 'sm_abbYuMi_trajectory';
open_system(sys);
waypointsL = ones(7,1);
waypointsR = ones(7,1);
ks = simscape.multibody.KinematicsSolver(sys);

%% List joints
ks.jointPositionVariables

%% Add frame variable for end effector relative to world
base = [sys '/Robot/World/W'];

followerL = [sys '/Robot/Arm L/gripper_l_base/GC'];
addFrameVariables(ks,'HandL','Translation',base,followerL);
addFrameVariables(ks,'HandL','Rotation',base,followerL);

followerR = [sys '/Robot/Arm R/gripper_r_base/GC'];
addFrameVariables(ks,'HandR','Translation',base,followerR);
addFrameVariables(ks,'HandR','Rotation',base,followerR);

%% Set x-y-z position of LEFT gripper as input target
%  and set desired position
frameVariables(ks)
targetIDsL = ["HandL.Translation.x";"HandL.Translation.y";"HandL.Translation.z";"HandL.Rotation.x";"HandL.Rotation.y";"HandL.Rotation.z"];
addTargetVariables(ks,targetIDsL);

targetsL1 = [0.4, 0.4, 0.4   0  0 0]; % m, deg
targetsL2 = [0.1, 0.3, 0.1   0 90 0]; % m, deg
targetsL3 = [0.1, 0.3, 0.02  0 90 0]; % m, deg
targetsL4 = [0.4, 0.0, 0.1   0 90 0]; % m, deg
targetsL5 = [0.4, 0.0, 0.04  0 90 0]; % m, deg

targetsR1 = [0.4, -0.4, 0.4  0  0 0]; % m, deg
targetsR2 = [0.1, -0.3, 0.1  0 90 0]; % m, deg
targetsR3 = [0.1, -0.3, 0.02 0 90 0]; % m, deg
targetsR4 = [0.4, -0.0, 0.1  0 90 0]; % m, deg
targetsR5 = [0.4, -0.0, 0.06 0 90 0]; % m, deg

%% Set joint angles as desired analysis outputs
jointPositionVariables(ks)

outputIDsL = ["j3.Rz.q";"j4.Rz.q";"j9.Rz.q";"j5.Rz.q";"j6.Rz.q";"j7.Rz.q";"j8.Rz.q"];
addOutputVariables(ks,outputIDsL);
addInitialGuessVariables(ks,outputIDsL);
guessesL = [50 30 0 0 0 0 -130];

%% Use kinematic solver to get joint angles
clear waypoint*
waypointL1 = ks.solve(targetsL1,guessesL);
viewSolution(ks);

waypointL2 = ks.solve(targetsL2,waypointL1);
viewSolution(ks);

waypointL3 = ks.solve(targetsL3,waypointL2);
viewSolution(ks);

waypointL4 = ks.solve(targetsL4,waypointL3);
viewSolution(ks);

waypointL5 = ks.solve(targetsL5,waypointL4);
viewSolution(ks);

waypointsL = ([waypointL1';waypointL2';waypointL3';waypointL3';waypointL2';waypointL4';waypointL5';waypointL5';waypointL4';waypointL1';waypointL1';waypointL1';waypointL1';waypointL1']')*pi/180;

%% Clear ks to prepare calculation for right gripper
clearOutputVariables(ks);
clearInitialGuessVariables(ks);
clearTargetVariables(ks);

%% Set x-y-z position of RIGHT gripper as input target
%  and set desired position
targetIDsR = ["HandR.Translation.x";"HandR.Translation.y";"HandR.Translation.z";"HandR.Rotation.x";"HandR.Rotation.y";"HandR.Rotation.z"];
addTargetVariables(ks,targetIDsR);

outputIDsR = ["j12.Rz.q";"j13.Rz.q";"j18.Rz.q";"j14.Rz.q";"j15.Rz.q";"j16.Rz.q";"j17.Rz.q"];
addOutputVariables(ks,outputIDsR);
addInitialGuessVariables(ks,outputIDsR);

%% Use kinematic solver to get joint angles
guessesR = [15 -35 -63 24 65 80 20];
waypointR1 = ks.solve(targetsR1,guessesR);
viewSolution(ks);

waypointR2 = ks.solve(targetsR2,waypointR1);
viewSolution(ks);

waypointR3 = ks.solve(targetsR3,waypointR2);
viewSolution(ks);

waypointR4 = ks.solve(targetsR4,waypointR3);
viewSolution(ks);

waypointR5 = ks.solve(targetsR5,waypointR4);
viewSolution(ks);

waypointsR = ([waypointR1';waypointR1';waypointR1';waypointR1';waypointR1';waypointR2';waypointR3';waypointR3';waypointR2';waypointR4';waypointR5';waypointR5';waypointR4';waypointR1']')*pi/180;
