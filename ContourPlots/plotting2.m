% A basic 3-D contour plot

close all              % close all graphics windows

[x,y,z] = peaks;

contour3(x,y,z,30)          % make 30 contour lines
   xlabel('X axis'),
   ylabel('Y axis'),
   title('My first 3-D contour plot')