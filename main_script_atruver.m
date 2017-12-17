%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133 Program Description 
%	This script calls all three user defined functions.
% Assignment Information
%	Assignment:       	FINAL MATLAB PROJECT
%   Author:             Ashley Truver, atruver@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INITIALIZATION ---
start_week = 1;
sun = 290; % the last value for sunday in the csv file is in row 290
mon = 545; % the last value for monday in the file is in row 545
tues = 831; % the last value for tuesday in the file is in row 831
wed = 1120; % the last value for wednesday in the file is in row 1120
thurs = 1406; % the last value for thursday in the file is in row 1406
fri = 1695; % the last value for friday in the file is in row 1695
sat = 1986; % the last value for saturday in the file is in row 1986, which is the last row in the file
% There aren't any empty rows in the csv file so each day goes from the first row of the last day until the end of that day.
% For example, all of the data for Wednesday goes from the row after Tuesday's last value (831 + 1) until 1120.
A = csvread('clarity_atruver.csv'); % calling the matrix and labelling it as a variable

%% CALCULATIONS ---
dexcom_atruver(); % This function finds the average blood sugar for each day and outputs the average value along with a recommendation for what adjustments to make to improve diabetes management.
embedded_loops(A, sun); % This function uses embedded loops to determine how frequently specific blood sugars may occur on Sunday. If the blood sugar is out of range, it will be perceived as avalue of either 39 or 401 which suggests a blood sugar that is too low or too high to read. 
dexcom_plot(sun, mon, tues, wed, thurs, fri, sat,A); % This function uses the prompt feature to ask a user to say which day they would like to see a blood glucose plot of. It assigns a time separated by five minute intervals to each blood glucose value and then plots time vs. blood glucose.

%% FORMATTED TEXT & FIGURE DISPLAYS ---


%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%