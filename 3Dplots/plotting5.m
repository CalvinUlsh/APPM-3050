% Plotting a 3D surface plot

close all                 % close all graphics windows

[x,y,z] = peaks(40);      % create the surface


surf( x, y, z ),               % a basic surface plot
   shading flat,               % try this option
   % shading interp,           % or this one
   xlabel('X label'),
   ylabel('Y label'),
   zlabel('Z label'),
   grid on,
   title('Surface plot of Peaks function')