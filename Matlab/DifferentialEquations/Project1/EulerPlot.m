% Authors: Carl Cortright, Sam Coyle, and Marcus Botsford
% Date: 9/25/2016
% Script to plot some numerical approximations of the black hole equation

% Define the black hole equation 
blackHole = @(t,x) ((1/x) - 1) * (1/sqrt(x));

% Define the starting point 
x0 = 2;

% Define the interval that we will be testing on
interval = [0, 10];

% Define our four h-values
h1 = 3; 
h2 = 1;
h3 = 0.1;
h4 = 0.01;

% Run euler's method for the four h-values
[t_sol1, x_sol1] = euler(blackHole, interval, x0, h1);
[t_sol2, x_sol2] = euler(blackHole, interval, x0, h2);
[t_sol3, x_sol3] = euler(blackHole, interval, x0, h3);
[t_sol4, x_sol4] = euler(blackHole, interval, x0, h4);


% Plot the solution curves
plot(t_sol1, x_sol1, 'x', t_sol2, x_sol2, 'r*', t_sol3, x_sol3, '--', t_sol4, x_sol4, 'b:')
title('Euler Approximations')
legend('h = 3', 'h = 1', 'h = 0.1', 'h = 0.01')

