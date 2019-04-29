% Plotting a 3-D mesh surface with the contour in 2-D

close all                  % close all graphics windows

[x,y] = meshgrid(-5:0.2:5, -5:0.2:5);

z = x .* exp(-x.^2 - y.^2);
% z = 0.5*x.^2 + 0.5*y.^2 - (1/3)*x.^3 - (1/3)*y.^3;


% surf(X,Y,Z)
% [x,y,z] = peaks(40);       % create the surface


meshc( x, y, z ),          % cousin of mesh plot!
   xlabel('X label'),
   ylabel('Y label'),
   zlabel('Z label'),
   grid on,
   title('Mesh plot and contour of peaks function'),
   hidden on                     % try hidden off!