% Plotting two simple functions with a matrix

close all              % close all graphics windows

x = linspace(0, 2*pi, 30);  % create 30 x-values

y = sin(x);
z = cos(x);

W = [y; z];         % make a matrix of the arrays

plot(x,W), title('My simple plot of a "matrix"')