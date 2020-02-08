function [Output_array,Output_table] = import_generation_data(File_name,Sheet_name)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
opts = spreadsheetImportOptions("NumVariables", 1);

% Specify sheet and range
opts.Sheet = Sheet_name;
opts.DataRange = "E2:E8642";

% Specify column names and types
opts.VariableNames = "PowerW";
opts.SelectedVariableNames = "PowerW";
opts.VariableTypes = "double";

% Import the data
Output_table = readtable(File_name,opts, "UseExcel", false);
clear opts
Output_array = table2array(Output_table);
end

