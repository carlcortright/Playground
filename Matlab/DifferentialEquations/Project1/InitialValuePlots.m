% Authors: Carl Cortright, Sam Coyle, and Marcus Botsford
% Date: 9/28/2016
% Script to plot the euler approximation of the black hole equation with 
% different starting points 

% Define the black hole equation 
blackHole = @(t,x) ((1/x) - 1) * (1/sqrt(x));

% Define the starting point 
x1 = 3;
x2 = 2; 
x3 = 1.5;
x4 = 1;

% Define our four h-values
h = 0.01;

% Define the interval that we will be testing on
interval = [0, 10];

% Define our four h-values
h = 0.01;

% Run euler's method for the four h-values
[t_sol1, x_sol1] = euler(blackHole, interval, x1, h);
[t_sol2, x_sol2] = euler(blackHole, interval, x2, h);
[t_sol3, x_sol3] = euler(blackHole, interval, x3, h);
[t_sol4, x_sol4] = euler(blackHole, interval, x4, h);


% Plot the solution curves
plot(t_sol1, x_sol1, 'b:', t_sol2, x_sol2, 'r*', t_sol3, x_sol3, '--', t_sol4, x_sol4, 'x')
title('Euler Approximations')
legend('x(0) = 3', 'x(0) = 2', 'x(0) = 1.5', 'x(0) = 1')
xlabel('t','FontSize',16);
ylabel('x','FontSize',16);