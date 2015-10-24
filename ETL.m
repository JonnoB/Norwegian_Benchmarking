%The undefined lines are causing import problems. This is not solved by
%using the TreatAsEmpty arguement

cd ('C:\Users\Jonno\Documents\Benchmarking\PA consulting\2015\Statkraft');
filename = 'Statkraft.xlsx'
z = xlsread(filename, 'statkraft_powerplant')

%% generator spec
filename = 'statkraft_genspec.csv';
formatSpec = '%s %f %s %s %s %f %f %f %f %f %C %C %C %C %C %f %f';
Statkraft_gen = readtable(filename, 'Format', formatSpec,  'TreatAsEmpty', {'NA'});
%% Powerplant This has something wrong in the type catagorization
filename = 'statkraft_powerplant.csv';
formatSpec = '%f %C %C %s %f %f %s %f %f %C %C %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
Statkraft_powerplant = readtable(filename, 'Format', formatSpec,  'TreatAsEmpty', {'NA', '', ' '});
%% damspec
filename = 'statkraft_damspec.csv';
formatSpec = '%s %s %s %s %C %C %s %s %s %s %f';
Statkraft_damspec = readtable(filename,'Format', formatSpec,  'TreatAsEmpty', {'NA', '', ' '});

