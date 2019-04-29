% Plotting two simple functions with some colors

close all              % close all graphics windows

x = linspace(0, 2*pi, 30);  % create 30 x-values

y = sin(x);
z = cos(x);

plot(x,y, 'b:p', x,z, 'c-', x,z, 'm+'),
     title('My simple plot 4')
     
% x and y are plotted blue, dotted curve, and pentagrams

% x and z are plotted cyan, solid curve and magenta plus signs