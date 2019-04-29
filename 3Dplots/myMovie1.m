%
% Plot the 'peaks' surface and view it
% from different angles.
%

clear all     % clear variables
close all     % close open graphics windows

[X,Y,Z] = peaks(30);
surfl(X, Y, Z)
   axis([-3 3 -3 3 -10 10])
   axis off
   shading interp
   colormap(hot)

% pre-allocation needed for MatLab 5.2 & older
m = moviein(15);

for i = 1 : 72
   view(-37.5 + 5*(i-1), 30)
   % m(:,i) = getframe;      % for older versions
   drawnow
   m(i) = getframe;
end

movie(m)                     % play it
