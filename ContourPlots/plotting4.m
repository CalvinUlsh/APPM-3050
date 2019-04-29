% A basic 2-D filled-color contour plot

close all              % close all graphics windows

[x,y,z] = peaks;

contourf(x,y,z,20)     % make 20 filled-contour lines
   xlabel('X axis'),
   ylabel('Y axis'),
   title('My first 2-D filled-color contour plot')