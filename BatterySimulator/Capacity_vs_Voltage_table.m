function capacityvsvoltageS1 = Capacity_vs_Voltage_table(Sheet_name)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
opts = spreadsheetImportOptions("NumVariables", 2);

% Specify sheet and range
opts.Sheet = Sheet_name;
opts.DataRange = "A2:B22";

% Specify column names and types
opts.VariableNames = ["DoD", "V"];
opts.SelectedVariableNames = ["DoD", "V"];
opts.VariableTypes = ["double", "double"];

% Import the data
capacityvsvoltageS1 = readtable("capacity vs voltage", opts, "UseExcel", false);
end

