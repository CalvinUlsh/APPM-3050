% A basic contour plot

close all               % close all graphics windows

[x,y,z] = peaks;

contour(x,y,z,30)       % make 30 contour lines
   xlabel('X axis'),
   ylabel('Y axis'),
   title('My first contour plot')