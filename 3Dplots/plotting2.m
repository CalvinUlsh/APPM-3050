% Plotting a mesh surface 3D

close all               % close all graphics windows

[x,y,z] = peaks(30);    % create the surface


mesh( x, y, z ),
   title('Calculus III memories'),
   xlabel('X label'),
   ylabel('Y label'),
   zlabel('Z label'),
   grid on,
   title('Mesh plot of Peaks function')