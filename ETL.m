%The undefined lines are causing import problems. This is not solved by
%using the TreatAsEmpty arguement

cd ('C:\Users\Jonno\Documents\Benchmarking\PA consulting\2015\Statkraft');

%% generator spec
filename = 'statkraft_genspec.csv';
gen = readtable(filename,  'TreatAsEmpty', {'NA'});
gen.Turbine_type = categorical(gen.Turbine_type) ;
gen.Reversible_pump_turbine_ = categorical(gen.Reversible_pump_turbine_);
gen.Kaplan___bulb_turbine_ = categorical(gen.Kaplan___bulb_turbine_);
gen.Turbine_with_2_or_more_runners_ = categorical(gen.Turbine_with_2_or_more_runners_);
gen.Water_cooled_windings_ = categorical(gen.Water_cooled_windings_);

%% Powerplant This has something wrong in the type catagorization
filename = 'statkraft_powerplant.csv';
powerplant = readtable(filename, 'TreatAsEmpty', {'NA', '', ' '});
powerplant.Storage___Run_of_river_plant = categorical(powerplant.Storage___Run_of_river_plant);
powerplant.Station_above_ground_ = categorical(powerplant.Station_above_ground_);

%% damspec
filename = 'statkraft_damspec.csv';
damspec = readtable(filename,  'TreatAsEmpty', {'NA', '', ' '});
damspec.Object_ID = categorical(damspec.Object_ID)
damspec.Dam_or_River_stream_intake__EBI__ = categorical(damspec.Dam_or_River_stream_intake__EBI__)

%% gatesspec  column problem
filename = 'statkraft_gatespec.csv';
gatespec = readtable(filename, 'TreatAsEmpty', {'NA', '', ' '});
%gatespec.Object_ID = categorical(gatespec.Object_ID)
%%
filename = 'statkraft_valvespec.csv';
valvespec = readtable(filename,  'TreatAsEmpty', {'NA', '', ' '});
%%
