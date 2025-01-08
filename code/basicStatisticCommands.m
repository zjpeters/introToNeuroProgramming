%% load ils excel file
clear; clc; close all
fileLocation = fullfile("..","derivatives","ils_ImagingFile.csv"); 
ilsTable = readtable(fileLocation);
meanLhSFArea = mean(ilsTable.lh_superiorfrontal_area);
stdLhSFArea = std(ilsTable.lh_superiorfrontal_area);
%%
clc
ilsArrayNoIDs = table2array(ilsTable(:, 2:end));
meanTable = mean(ilsArrayNoIDs);
stdTable = std(ilsArrayNoIDs);

%% for loops
for subjectIndex = 1:height(ilsTable)
    disp(ilsTable.ID(subjectIndex))
end

%%
clc
for i = 1:50
    x = i * 2
end

%%

meanArray(1,2 - 1) = mean(table2array(ilsTable(:,2)));
%%
meanArray = zeros(1,width(ilsTable) - 1);
for i = 2:width(ilsTable)
    meanArray(1,i - 1) = mean(table2array(ilsTable(:,i)));
end