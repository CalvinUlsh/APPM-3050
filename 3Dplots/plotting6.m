% Plotting a shaded surface and the conours in 3D

close all                 % close all graphics windows

[x,y,z] = peaks(40);      % create the surface


surfc( x, y, z ),
   % shading flat,           % try this option
   shading interp,           % smooth is nice
   xlabel('X label'),
   ylabel('Y label'),
   zlabel('Z label'),
   grid on,
   title('Surface plot of Peaks function with contours')