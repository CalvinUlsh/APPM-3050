% Plotting two simple functions

close all              % close all graphics windows

x = linspace(0, 2*pi, 30);  % create 30 x-values

y = sin(x);
z = cos(x);

plot(x,y, x,z), title('My simple plot 2')