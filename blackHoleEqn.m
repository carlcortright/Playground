% Authors: Carl Cortright, Sam Coyle, and Marcus Botsford
% Date: 9/25/2016
% Function for the black hole equation 

% Inline function for dx/dt near the black hole
function f = blackHoleEqn(x)
    f = ((1/x) - 1) * (1/sqrt(x));
end
