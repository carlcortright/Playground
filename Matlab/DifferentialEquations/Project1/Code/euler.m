function [t,y] = euler(odefun, tspan, y0, h)

% This function applies the Euler method to the problem
%
%   y'(t) = odefun(t,y), y(tspan(1)) = y0
%
% with step size h.

    % Error messages:
    
    if h <= 0
        fprintf('Invalid Step Size\n')
        t = NaN;
        y = NaN;
        return
    elseif length(tspan) ~= 2
        fprintf('Invalid Time Inverval\n')
        t = NaN;
        y = NaN;
        return
    elseif tspan(1) >= tspan(2)
        fprintf('Null Time Inverval\n')
        t = NaN;
        y = NaN;
    end
    
    % Set up initial conditions for Euler solver
    
    N = ceil((tspan(2)-tspan(1)) / h);

    y = zeros(N+1,1);
    t = zeros(N+1,1);
    t(1) = tspan(1);
    y(1) = y0;

    % Run Euler solver
    
    for i = 1:N
        t(i+1) = t(i) + h;
        y(i+1) = y(i)+h*odefun(t(i),y(i));
    end
    
end

