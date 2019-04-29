% Plotting a simple parameterized path in 3D

close all                    % close graphics windows

% t = linspace(0, 10*pi);         % create 100 t-values
t = linspace(0, 10*pi, 400);  % create 400 t-values


plot3( sin(t), cos(t), t ),
   title('Calculus III memories'),
   xlabel('X label'),
   ylabel('Y label'),
   zlabel('Z label'),
   text(0, 0, 0, 'Origin'),
   grid on,
   title('Fond memories of Calculus III')