%% MyMatlab1
% This script solves the problem and creates the 'solution1.txt' file

 global pfotemp
 scenarioDir = pfotemp;
 rawFile = fullfile(scenarioDir, 'powersystem.raw');
 genFile = fullfile(scenarioDir, 'generator.csv');
 contingFile = fullfile(scenarioDir, 'contingency.csv');

% rawFile = fullfile('powersystem.raw');
% genFile = fullfile('generator.csv');
% contingFile = fullfile('contingency.csv');
mpc = convert2mpc(rawFile,genFile);

contingencies = loadContingencies(mpc,contingFile);

[solutionMPC_FIUN, success] = solve_opf_MultipleContingencies(mpc,contingencies,1)

save('solution0_FIUN.mat','solutionMPC_FIUN')

     

