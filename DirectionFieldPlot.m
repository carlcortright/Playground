% Authors: Carl Cortright, Sam Coyle, and Marcus Botsford
% Date: 9/25/2016
% Script to plot the dirfield of the black hole equation

% Equation for the black hole
f = @(t,x) ((1/x) - 1) * (1/sqrt(x));
% Plot of the direction field
dirfield(f, 0:.1:1, 0:.2:3, 'Black Hole Direction Field')


