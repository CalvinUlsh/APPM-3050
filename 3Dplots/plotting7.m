% Plotting a surface surface with lighting in 3D

close all                    % close all graphics windows

[x,y,z] = peaks(30);         % create the surface


surfl( x, y, z ),
   shading interp,           % smooth is nice
   colormap cool           % try bone, pink, flag, cool, copper
   % with single color shading
   xlabel('X label'),
   ylabel('Y label'),
   zlabel('Z label'),
   grid on,
   title('Surface plot of Peaks function with lighting')