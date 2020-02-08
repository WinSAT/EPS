clc
clear
close all

opts = spreadsheetImportOptions("Summer_Sun_Sync", 1); 
% Specify sheet and range
opts.Sheet = "FA_L";
opts.DataRange = "E2:E8642";

% Specify column names and types
opts.VariableNames = "Power";
opts.SelectedVariableNames = "PowerW";
opts.VariableTypes = "double";

% Import the data
Samplesimulation = readtable("Summer_Sun_Sync.xlsx",opts, "UseExcel", false)
clear opts
 t = table2array(Samplesimulation)

