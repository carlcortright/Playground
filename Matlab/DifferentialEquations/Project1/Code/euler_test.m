% euler_test.m
% APPM 2360, Fall 2016
%
% This script gives an example of how to use euler.m

close all
clear all

% First, we must use an anonymous function to define our problem:
odefun = @(t,y) t*y;

% We give the initial point y0:
y0 = 1;

% Then we define the time interval
tspan = [0,1];

% We want timesteps of h = 0.01
h = 0.1;

% Now we are ready to run the euler solver:
[t_soln,y_soln] = euler(odefun,tspan,y0,h);

% We can calculate the actual solution to compare:
y_actual = exp(t_soln.^2 / 2);

% And plot the results.
plot(t_soln,y_soln,'o',t_soln,y_actual)

% Below are labels and title for the plot:
xlabel('t','FontSize',16)
ylabel('y(t)','FontSize',16)
title('Euler Solution with h = 0.1','FontSize',22)
legend('Numeric Solution','Actual Solution')

% That doesn't look very accurate, so let's decrease the step size.

% Set h = 0.01 and solve via Euler:
h = 0.01;
[t_soln,y_soln] = euler(odefun,tspan,y0,h);

% Since t_soln has changed, we need to make y_actual again:
y_actual = exp(t_soln.^2 / 2);

% And plot the results on a new figure.
figure(2)
plot(t_soln,y_soln,'o',t_soln,y_actual)

% Below are labels and title for the plot:
xlabel('t','FontSize',16)
ylabel('y(t)','FontSize',16)
title('Euler Solution with h = 0.01','FontSize',22)
legend('Numeric Solution','Actual Solution')

% This numerical solution looks much closer to the actual solution.