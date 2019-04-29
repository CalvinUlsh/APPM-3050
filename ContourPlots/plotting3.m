% A basic 2-D color contour plot of a surface

close all              % close all graphics windows

[x,y,z] = peaks;

pcolor(x,y,z)           % make color contour region
   shading interp       % remove lines and shade
   xlabel('X axis'),
   ylabel('Y axis'),
   title('My first 2-D color contour plot of a surface')