% Plotting a simple function

close all              % close all graphics windows

x = linspace(0, 2*pi, 30);  % create 30 x-values

y = sin(x);
% y = 3*x.^2 ./ ( 1 + 4*x.^2).^(0.5);

plot(x,y), title('My first simple plot')