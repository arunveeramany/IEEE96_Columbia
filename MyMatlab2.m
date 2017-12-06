%% MyMatlab2
% This script creates the 'solution2.txt' file

global pfotemp
%global solutionMPC_FIUN
load('solution0_FIUN.mat')
scenarioDir = pfotemp;
rawFile = fullfile(scenarioDir, 'powersystem.raw');
genFile = fullfile(scenarioDir, 'generator.csv');
contingFile = fullfile(scenarioDir, 'contingency.csv');
% rawFile = fullfile('powersystem.raw');
% genFile = fullfile('generator.csv');
% contingFile = fullfile('contingency.csv');
mpc = convert2mpc(rawFile,genFile);
contingencies = loadContingencies(mpc,contingFile);
create_solution2(solutionMPC_FIUN, contingencies, 1);