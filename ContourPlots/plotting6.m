% A basic contour plot with labels

close all               % close all graphics windows

[x,y,z] = peaks;

C = contour(x,y,z,16);       % make 16 contour lines
   clabel(C)
   xlabel('X axis'),
   ylabel('Y axis'),
   title('My first contour plot')