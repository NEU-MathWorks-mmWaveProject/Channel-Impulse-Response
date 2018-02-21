%*************************************************************************
%
% Project Name: Complex Impulse Response (CIR) for mmWave transmissions
% File Name: exampleGetCIR.m
%
% Author: Miead Tehrani-Moayyed
% Work address: Wireless Networks and System Lab, 301 Ell Hall 
% Northeastern University, 360 Huntington Ave. Boston, MA 02115
% email: tehranimoayyed.m@husky.neu.edu
% Website: http://sites.google.com/site/mieadt/
% Last revision: 16-Feb-2018
%
% This is an example of using the function "getCIR.m" to plot the complex
% channel impulse response (CIR) based on a file generated by a ray-tracer.  
%
% The scenario considered in this example is the "Complex Conference Room"
% that can be customized with respect to the amount of furniture and
% electronic equipment present in the room. The extracted CIR is saved in
% a matrix CCIR, while the CIR is plotted in a pop-up window.
%
% m-files required: getCIR.m
% Subfunctions: none
% MAT-files required: none
% Other input files required: use the provided ".p2m" files
% 
% See also: getCIR.m, exampleGetCIR.m
%
%*************************************************************************

%------------- BEGIN CODE --------------

clc

%Indoor LOS Scenario: Complex Conference room
scenario='Complex Conference Room Scenario';
scenario_filename='Complex_Conference Room Scenario.p2m';
receiver_sensitivity=-100;

%extract CIR for the given scenario
CCIR=getCIR(scenario_filename,receiver_sensitivity);

%plot CIR for the given scenario
getCIR(scenario_filename,receiver_sensitivity);
subplot(2,1,1);
title(scenario);

%------------- END OF CODE --------------





