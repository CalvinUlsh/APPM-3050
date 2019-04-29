% A basic 2-D filled-color contour plot with values

close all                % close graphics windoes

[x,y,z] = peaks;

C = contourf(x,y,z,12);  % make 12 filled-contour lines
   clabel(C),
   xlabel('X axis'),
   ylabel('Y axis'),
   title('My first 2-D filled-color contour plot with values')