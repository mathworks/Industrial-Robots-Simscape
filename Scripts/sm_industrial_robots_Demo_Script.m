%% Industrial Robot Models in Simscape
% <html>
% <img src="Images\sm_industrial_robots_overview_image_ribbon.png" height="120"><br>
% <br>
% <span style="font-family:Arial">
% <span style="font-size:10pt">
% <tr><b><u>Overview</u></b><br>
% <br>
% <tr>This repository of industrial robot models for use with Simscape includes mobile and manipulator robots. It has examples that help you:<br>
% <ul>
% <span style="font-family:Arial">
% <span style="font-size:10pt">
% <li>Import URDF files using MATLAB to create models</li>
% <li>Perform kinematic and dynamic analyses</li>
% <li>Integrate electric drives and control algorithms in Simulink</li>
% <li>Leverage Robotics System Toolbox for path and trajectory planning</li>
% </style>
% </style>
% </ul>
% <span style="font-family:Arial">
% <span style="font-size:10pt">
% <tr><b><u>Example Models</u></b><br>
% <tr>1.  Trajectory Testing: <a href="matlab:sm_industrial_robots_import('abbYuMi','path');cd('Models');startup_sm_abbYuMi_trajectory;">ABB YuMi Dual Arm Robot</a><br>
% <tr>2.  Path Following: <a href="matlab:sm_industrial_robots_import('amrPioneer3DX','path');cd('Models');startup_sm_amrPioneer3DX_path_follow;">Adept MobileRobots Pioneer 3-DX</a><br>
% <tr>3.  Path Following: <a href="matlab:sm_industrial_robots_import('amrPioneer3DX','path');cd('Models');startup_sm_amrPioneer3DX_path_follow_elec;">Adept MobileRobots Pioneer 3-DX with Electric Motors</a><br>
% <br>
% <tr><b><u>Kinova</u></b><br>
% <tr>1.  Kinova Jaco® Gen3..............: <a href="matlab:sm_industrial_robots_import('kinovaGen3','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaGen3','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('kinovaGen3','image');">Image</a><br>
% <tr>2.  Kinova Jaco® Gen2 N6S200: <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2N6S200','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2N6S200','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2N6S200','image');">Image</a><br>
% <tr>3.  Kinova Jaco® Gen2 N6S300: <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2N6S300','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2N6S300','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2N6S300','image');">Image</a><br>
% <tr>4.  Kinova Jaco® Gen2 N7S300: <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2N7S300','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2N7S300','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2N7S300','image');">Image</a><br>
% <tr>5.  Kinova Jaco® Gen2 S6S300: <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2S6S300','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2S6S300','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2S6S300','image');">Image</a><br>
% <tr>6.  Kinova Jaco® Gen2 S7S300: <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2S7S300','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2S7S300','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaJacoJ2S7S300','image');">Image</a><br>
% <tr>7.  Kinova Mico® Gen1 N4S200: <a href="matlab:sm_industrial_robots_import('kinovaMicoM1N4S200','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaMicoM1N4S200','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaMicoM1N4S200','image');">Image</a><br>
% <tr>8.  Kinova Mico® Gen1 N6S200: <a href="matlab:sm_industrial_robots_import('kinovaMicoM1N6S200','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaMicoM1N6S200','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaMicoM1N6S200','image');">Image</a><br>
% <tr>9.  Kinova Mico® Gen1 N6S300: <a href="matlab:sm_industrial_robots_import('kinovaMicoM1N6S300','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaMicoM1N6S300','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaMicoM1N6S300','image');">Image</a><br>
% <tr>10. Two Kinova Jaco® 6 DOF...: <a href="matlab:sm_industrial_robots_import('kinovaJacoTwoArmExample','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaJacoTwoArmExample','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaJacoTwoArmExample','image');">Image</a><br>
% <tr>11. Kinova Movo®.....................: <a href="matlab:sm_industrial_robots_import('kinovaMovo','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kinovaMovo','edit');">(code),  <a href="matlab:sm_industrial_robots_import('kinovaMovo','image');">Image</a><br>
% <br>
% <tr><b><u>ABB</u></b><br>
% <tr>1.  ABB IRB 120..: <a href="matlab:sm_industrial_robots_import('abbIrb120','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('abbIrb120','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('abbIrb120','image');">Image</a><br>
% <tr>2.  ABB IRB 120T: <a href="matlab:sm_industrial_robots_import('abbIrb120T','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('abbIrb120T','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('abbIrb120T','image');">Image</a><br>
% <tr>3.  ABB IRB 1600: <a href="matlab:sm_industrial_robots_import('abbIrb1600','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('abbIrb1600','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('abbIrb1600','image');">Image</a><br>
% <tr>4.  ABB YuMi.......: <a href="matlab:sm_industrial_robots_import('abbYuMi','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('abbYuMi','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('abbYuMi','image');">Image</a><br>
% <br>
% <tr><b><u>Adept Mobile Robots</u></b><br>
% <tr>1.  Adept MobileRobots Pioneer 3-AT.: <a href="matlab:sm_industrial_robots_import('amrPioneer3AT','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('amrPioneer3AT','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('amrPioneer3AT','image');">Image</a><br>
% <tr>2.  Adept MobileRobots Pioneer 3-DX: <a href="matlab:sm_industrial_robots_import('amrPioneer3DX','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('amrPioneer3DX','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('amrPioneer3DX','image');">Image</a><br>
% <br>
% <tr><b><u>Boston Dynamics</u></b><br>
% <tr>1.  Boston Dynamics ATLAS®: <a href="matlab:sm_industrial_robots_import('atlas','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('atlas','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('atlas','image');">Image</a><br>
% <br>
% <tr><b><u>Clear Path Robotics</u></b><br>
% <tr>1.  Husky: <a href="matlab:sm_industrial_robots_import('clearpathHusky','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('clearpathHusky','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('clearpathHusky','image');">Image</a><br>
% <tr>2.  Jackal: <a href="matlab:sm_industrial_robots_import('clearpathJackal','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('clearpathJackal','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('clearpathJackal','image');">Image</a><br>
% <br>
% <tr><b><u>Kuka</u></b><br>
% <tr>1.  KUKA LBR iiwa 7 R800..: <a href="matlab:sm_industrial_robots_import('kukaiiwa7','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kukaiiwa7','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('kukaiiwa7','image');">Image</a><br>
% <tr>2.  KUKA LBR iiwa 14 R820: <a href="matlab:sm_industrial_robots_import('kukaiiwa14','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('kukaiiwa14','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('kukaiiwa14','image');">Image</a><br>
% <br>
% <tr><b><u>NASA</u></b><br>
% <tr>1.  NASA Valkyrie: <a href="matlab:sm_industrial_robots_import('valkyrie','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('valkyrie','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('valkyrie','image');">Image</a><br>
% <br>
% <tr><b><u>Quanser</u></b><br>
% <tr>1.  Quanser QBot 2e: <a href="matlab:sm_industrial_robots_import('quanserQBot2e','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('quanserQBot2e','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('quanserQBot2e','image');">Image</a><br>
% <tr>2.  Quanser QCar.....: <a href="matlab:sm_industrial_robots_import('quanserQCar','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('quanserQCar','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('quanserQCar','image');">Image</a><br>
% <br>
% <tr><b><u>Rethink</u></b><br>
% <tr>1.  Rethink Robotics Baxter..: <a href="matlab:sm_industrial_robots_import('rethinkBaxter','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('rethinkBaxter','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('rethinkBaxter','image');">Image</a><br>
% <tr>2.  Rethink Robotics Sawyer: <a href="matlab:sm_industrial_robots_import('rethinkSawyer','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('rethinkSawyer','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('rethinkSawyer','image');">Image</a><br>
% <br>
% <tr><b><u>Robotis</u></b><br>
% <tr>1.  ROBOTIS OP2 Humanoid...........................................: <a href="matlab:sm_industrial_robots_import('robotisOP2','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('robotisOP2','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('robotisOP2','image');">Image</a><br>
% <tr>2.  ROBOTIS OpenMANIPULATOR.................................: <a href="matlab:sm_industrial_robots_import('robotisOpenManip','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('robotisOpenManip','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('robotisOpenManip','image');">Image</a><br>
% <tr>3.  ROBOTIS TurtleBot 3 Burger.......................................: <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3Burger','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3Burger','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3Burger','image');">Image</a><br>
% <tr>4.  ROBOTIS TurtleBot 3 Waffle.......................................: <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3Waffle','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3Waffle','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3Waffle','image');">Image</a><br>
% <tr>5.  ROBOTIS TurtleBot 3 Waffle OpenMANIPULATOR....: <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3WaffleOpenManip','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3WaffleOpenManip','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3WaffleOpenManip','image');">Image</a><br>
% <tr>6.  ROBOTIS TurtleBot 3 Waffle Pi...................................: <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3WafflePi','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3WafflePi','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3WafflePi','image');">Image</a><br>
% <tr>7.  ROBOTIS TurtleBot 3 Waffle Pi OpenMANIPULATOR: <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3WafflePiOpenManip','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3WafflePiOpenManip','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('robotisTurtleBot3WafflePiOpenManip','image');">Image</a><br>
% <br>
% <tr><b><u>Universal Robots</u></b><br>
% <tr>1.  Universal Robots UR3..: <a href="matlab:sm_industrial_robots_import('universalUR3','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('universalUR3','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('universalUR3','image');">Image</a><br>
% <tr>2.  Universal Robots UR5..: <a href="matlab:sm_industrial_robots_import('universalUR5','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('universalUR5','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('universalUR5','image');">Image</a><br>
% <tr>3.  Universal Robots UR10: <a href="matlab:sm_industrial_robots_import('universalUR10','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('universalUR10','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('universalUR10','image');">Image</a><br>
% <br>
% <tr><b><u>Willow Garage</u></b><br>
% <tr>1.  Willow Garage PR2: <a href="matlab:sm_industrial_robots_import('willowgaragePR2','import');">Import Model</a> <a href="matlab:sm_industrial_robots_import('willowgaragePR2','edit');">(code)</a>,  <a href="matlab:sm_industrial_robots_import('willowgaragePR2','image');">Image</a><br>
% <br>
% </style>
% </style>
% </html>
% 

% Copyright 2021-2022 The MathWorks, Inc.

