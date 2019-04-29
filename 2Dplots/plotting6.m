% Plotting in polar coordinates

close all               % close all graphics windows

t = linspace(0, 2*pi);         % create 100 t-values
% t = linspace(0, 2*pi, 400);  % create 400 t-values


r = sin(2*t) .* cos(2*t);


polar(t,r), title('Calculus II memories')