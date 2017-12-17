function [] = dexcom_scatter(sun, mon, tues, wed, thurs, fri, sat,A)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
% Program Description 
%   This program prompts the used to say which specific day they would like
%   to see a scatter plot of, and then it will output that plot. This function uses the prompt feature to ask a user to say which day they would like to see a blood glucose plot of. It assigns a time separated by five minute intervals to each blood glucose value and then plots time vs. blood glucose.
%
% Function Call
%   
%
% Input Arguments
%   1. sun-sat are the values that separate each day's data.
%   2. A references the csv file.
%
% Output Arguments
%   1. 
%
% Assignment Information
%   Assignment:       	FINAL MATLAB PROJECT
%   Author:             Ashley Truver, atruver@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

%% ____________________
%% CALCULATIONS
prompt = ('\nWhat day would you like to see data for?\n');
day = input(prompt);

if day == sun
    day_before = 1;
elseif day == mon
    day_before = sun;
elseif day == tues
    day_before = mon;
elseif day == wed
    day_before = tues;
elseif day == thurs
    day_before = wed;
elseif day == fri
    day_before = thurs;
elseif day == sat
    day_before = fri;
end

minutes = 5 * (day - day_before);
for x = day_before : minutes
    day_before = day_before + 1;
    counter_plot = day_before + 1;
    for y = A(counter_plot,2)
        scatter(x,y)
        hold on
    end
end

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
