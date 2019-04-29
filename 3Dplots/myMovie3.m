%
% Plot a surface z(x,y) and vary amplitude
%

clear all
close all

nFrames = 100;                 % number of frames in the movie

                               % make an x-y grid
[x,y] = meshgrid(-sqrt(pi) : 0.1 : sqrt(pi));

for i = 1 : nFrames            % make lots of plots

      z = sin(i*2*pi/nFrames) * sin(x.^2 + y.^2);
      
      mesh(x,y,z),...          % make one plot
          xlabel('X axis'),...
	      ylabel('Y axis'),...
	      zlabel('Z axis'),...
          title('Plot of myMovie3.m'),...
	      axis([-2 2 -2 2 -1 1]);
	  drawnow
      M(i) = getframe;         % add plot to movie array
end

playTimes = 1;
movie(M,playTimes)             % play it
% movie2avi(M,'movie3.avi');       % convert it


