function [] = embedded_loops(A, sun)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
% Program Description 
%   This program looks exclusively at Sunday's data and finds how often a
%   prompted value occurs in the data set. 
%
% Function Call
%   ...
%
% Input Arguments
%   1. A references the csv file that is uploaded
%   2. sun is the range of values for Sunday.
%
% Output Arguments
%   1. There aren't any outputs that are referenced in other programs.
%
% Assignment Information
%   Assignment:       	FINAL MATLAB PROJECT
%   Author:             Ashley Truver, atruver@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
n = 1;
sun = 290;
prompt=('\nWhat blood glucose level would you like to look at on Sunday?\n');
N = input(prompt);
counter = 0;

%% ____________________
%% CALCULATIONS
while n == 1
    for index_row = 1:sun
        for index_col = 1
            a = A(index_row,2);
            if a == N
                counter = counter + 1;
            end
        end
    end    
n=0;  
if counter == 0 
    fprintf('\nValue was not recorded on this day\n')
end

end
if N == 401
   fprintf('\n Your blood sugar was too high for the readable range %d times\n',counter)
elseif N == 39
   fprintf('\n Your blood glucose was too low for the readable range %d times \n', counter)
end
fprintf('\n you had a blood sugar of %d, %d times\n',N,counter)

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
