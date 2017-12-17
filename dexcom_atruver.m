function [] = dexcom_atruver()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
% Program Description 
%  This program finds the average blood glucose value out to two decimal
%  points for each day, Sunday through Saturday. With the calculated
%  averages, the function then outputs various feedback on how to improve
%  diabetes management depending on the calculated average.
%
% Function Call
% 
%
% Input Arguments
%   1. All inputs are initialized in the function.
%
% Output Arguments
%   1. All outputs stay within this function and aren't called in other
%   functions.
%
% Assignment Information
%   Assignment:       	FINAL MATLAB PROJECT
%   Author:             Ashley Truver, atruver@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
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
i = 1; 
v = length(A(start_week:sun)); % total number of elements in index
w = length(A(sun:mon)); 
t = length(A(mon:tues));
s = length(A(tues:wed));
r = length(A(wed:thurs));
u = length(A(thurs:fri));
m = length(A(fri:sat));

%% ____________________
%% CALCULATIONS

running_sum_sun = 0; % initializing running_sum_sun
for N = i : v
    Number = A(N,2); 
    running_sum_sun = running_sum_sun + Number;
end
    running_ave_sun = running_sum_sun ./ v;
    %calculates Sunday's average using the running sum and dividing it by
    %the size of the index
fprintf('The average blood glucose level on Sunday is %1.2f.  \n', running_ave_sun)
if running_ave_sun < 130 % looks at a specific range of an ideal blood glucose level
    fprintf('Average blood sugar is fine, keep insulin rates the same. \n');
elseif 130 < running_ave_sun && running_ave_sun < 200 % This range represents a moderately high blood glucose value
    fprintf('Average blood sugar is higher than desired. Consider increasing insulin rates. \n'),
else % Blood sugar's greater than 200 need significant improvement
    fprintf('Average blood sugar is much higher than desired. Increase insulin rates and carb ratios and try to increase activity levels. \n');
end

running_sum_mon = 0;
for N = (v + 1) : mon
    Number = A(N,2);
    running_sum_mon = running_sum_mon + Number;
end
   running_ave_mon = running_sum_mon ./ w;

fprintf('The average blood glucose level on Monday is %1.2f. \n', running_ave_mon);
if running_ave_mon < 130
    fprintf('Average blood sugar is fine, keep insulin rates the same. \n');
elseif 130 < running_ave_mon && running_ave_mon < 200
    fprintf('Average blood sugar is higher than desired. Consider increasing insulin rates. \n'),
else
    fprintf('Average blood sugar is much higher than desired. Increase insulin rates and carb ratios and try to increase activity levels. \n');
end

running_sum_tues = 0;

for N = (mon + 1) : tues
    Number = A(N,2);
    running_sum_tues = running_sum_tues + Number;
end
running_ave_tues = running_sum_tues ./ t;
fprintf('The average blood glucose level on Tuesday is %1.2f \n', running_ave_tues);
if running_ave_tues < 130
    fprintf('Average blood sugar is fine, keep insulin rates the same. \n');
elseif 130 < running_ave_tues && running_ave_tues < 200
    fprintf('Average blood sugar is higher than desired. Consider increasing insulin rates. \n'),
else
    fprintf('Average blood sugar is much higher than desired. Increase insulin rates and carb ratios and try to increase activity levels. \n');
end

running_sum_wed = 0;
for N = (tues + 1) : wed
    Number = A(N,2);
    running_sum_wed = running_sum_wed + Number;
end
running_ave_wed = running_sum_wed ./ s;

fprintf('The average blood glucose level on Wednesday is %1.2f \n', running_ave_wed);
if running_ave_wed < 130
    fprintf('Average blood sugar is fine, keep insulin rates the same. \n');
elseif 130 < running_ave_wed && running_ave_wed < 200
    fprintf('Average blood sugar is higher than desired. Consider increasing insulin rates. \n'),
else
    fprintf('Average blood sugar is much higher than desired. Increase insulin rates and carb ratios and try to increase activity levels. \n');
end

running_sum_thurs = 0;
for N = (wed + 1): thurs
    Number = A(N,2);
    running_sum_thurs = running_sum_thurs + Number;
end
running_ave_thurs = running_sum_thurs ./ r;
fprintf('The average blood glucose level on Thursday is %1.2f \n', running_ave_thurs);
if running_ave_thurs < 130
    fprintf('Average blood sugar is fine, keep insulin rates the same. \n');
elseif 130 < running_ave_thurs && running_ave_thurs < 200
    fprintf('Average blood sugar is higher than desired. Consider increasing insulin rates. \n'),
else
    fprintf('Average blood sugar is much higher than desired. Increase insulin rates and carb ratios and try to increase activity levels. \n');
end

running_sum_fri = 0;
for N = (thurs + 1): fri
    Number = A(N,2);
    running_sum_fri = running_sum_fri + Number;
end
running_ave_fri = running_sum_fri ./ u;
fprintf('The average blood glucose level on Friday is %1.2f \n', running_ave_fri);
if running_ave_fri < 130
    fprintf('Average blood sugar is fine, keep insulin rates the same. \n');
elseif 130 < running_ave_fri && running_ave_fri < 200
    fprintf('Average blood sugar is higher than desired. Consider increasing insulin rates. \n'),
else
    fprintf('Average blood sugar is much higher than desired. Increase insulin rates and carb ratios and try to increase activity levels. \n');
end

running_sum_sat = 0;
for N = (fri + 1) : sat
    Number = A(N,2);
    running_sum_sat = running_sum_sat + Number;
end
running_ave_sat = running_sum_sat ./ m;
fprintf('The average blood glucose level on Saturday is %1.2f \n', running_ave_sat);
if running_ave_sat < 130
    fprintf('Average blood sugar is fine, keep insulin rates the same. \n');
elseif 130 < running_ave_sat && running_ave_sat < 200
    fprintf('Average blood sugar is higher than desired. Consider increasing insulin rates. \n'),
else
    fprintf('Average blood sugar is much higher than desired. Increase insulin rates and carb ratios and try to increase activity levels. \n');
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