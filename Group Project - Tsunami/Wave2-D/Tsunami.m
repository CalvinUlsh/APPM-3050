clear all
close all

nFrames = 500;                % number of frames in the movie

c      = 1;                   % set physical parameters
deltaT = 0.02;
deltaX = 0.05;
deltaY = 0.03;
lamb = (c*deltaT/deltaX)^2;

[x, y] = meshgrid(0 : 0.02 : 1);     % calculate x, y node locations
uInit  = 1.5 * sin(2*pi*x) .* sin(2*pi*y);

dim  = length(x);
uCur = zeros(dim, dim);       % set spatial boundary values
uFut = zeros(dim, dim);       % and pre-allocate!

                              % plot the initial surface
surf(x, y, uInit),
   xlabel('X axis'), ylabel('Y axis'),
   title('My title'),
   axis([0 1 0 1 -1.5 1.5])
   axis off
   shading interp
   colormap(bone)
drawnow


for j = 2 : (dim-1)           % plot the first time step surface
    for k = 2 : (dim-1)
       uCur(j,k) = (lamb *(uInit(j-1,k) + uInit(j+1,k) + uInit(j,k-1) + uInit(j,k+1)) + (2-4*lamb)*uInit(j,k)) /2;
    end
end
surf(x, y, uCur),
   xlabel('X axis'), ylabel('Y axis'),
   title('My title'),
   axis([0 1 0 1 -1.5 1.5])
   axis off
   shading interp
   colormap(bone)
drawnow


                               % and the rest of the time steps...
for i = 2 : nFrames            % make lots of plots
    
      for j = 2 : (dim-1)
          for k = 2 : (dim-1)
             uFut(j,k) = lamb *(uCur(j-1,k) + uCur(j+1,k) +uCur(j,k-1) +uCur(j,k+1)) +(2-4*lamb)*uCur(j,k) -uInit(j,k);
          end
      end
      surf(x, y, uFut),
         xlabel('X axis'), ylabel('Y axis'),
         title('My title'),
         axis([0 1 0 1 -1.5 1.5])
         axis off
         shading interp
         colormap(bone)
	  drawnow

    uInit = uCur;
    uCur = uFut;
end


beep


% 0 slope on side where you're sending the forced function wave in and 0 slope on the other 3 sides 
% special cases (if statements) for each of the 4 sides (3 zero-slope sides and one forced function side)
% as well as the cases at each of the far corners from the forcing function
% side where there will be 2 phantom variables in each of those 2 cases. 
% focus of getting the motion, then set up variable depth (right now its just a standard depth everywhere)


