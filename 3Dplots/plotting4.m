% Plotting a 3-D mesh surface with the contour in 2-D

close all                  % close all graphics windows

[x,y,z] = peaks(40);       % create the surface


meshc( x, y, z ),          % cousin of mesh plot!
   xlabel('X label'),
   ylabel('Y label'),
   zlabel('Z label'),
   grid on,
   title('Mesh plot and contour of peaks function'),
   hidden on                     % try hidden off!