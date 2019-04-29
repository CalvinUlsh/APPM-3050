% Plotting a closed mesh surface in 3D

close all                % close all graphics windows

[x,y,z] = sphere(40);    % create the surface


mesh( x, y, z ),
   xlabel('X label'),
   ylabel('Y label'),
   zlabel('Z label'),
   grid on,
   title('Mesh plot of sphere function'),
   hidden on                     % try hidden off!