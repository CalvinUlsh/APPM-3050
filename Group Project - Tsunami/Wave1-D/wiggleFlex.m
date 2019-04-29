% Solve the 1-D wave equation subject to
%
%   Boundary conditions:
%   u = 0     on right
%   u = f(t)  on left
%
%   Initial conditions:
%   u = 0     at t=0
%   du/dt = 0 at t=0
%
%   Calvin Ulsh
% -------------------------------------------

clear all
close all
clc

nFrames = 1400;               % number of frames in the movie

c = 1;                       % set physical parameters
deltaT = 0.01;
deltaX = 0.01;
lamb = (c*deltaT/deltaX)^2;
alpha = 0;
beta = 1;
gamma = 0;


xLeft  = 0;
xRight = 4;        %10
uMin   = -1.5;       %-2.5                   % used for plotting frame
uMax   = 1.5;
x = linspace(xLeft , xRight , 201);     % calculate x node locations
n = length(x);


uInit = 0*x;                           % set initial values and plot
plot(x,uInit), xlabel('X axis'), ylabel('Y axis'),
               title('My title'), axis([xLeft xRight uMin uMax])
drawnow

uCur = zeros(1,n);                      % set boundary values
uCur(1) = leftBoundary(1, deltaT);  
uCur(n) = 0;

for j = 2 : n                       % used to be for j = 2 : (n-1)  % calculate the first time-step
    if j == n
        if beta == 0
            uCur(n) = gamma/alpha;
        else
            phantom = rightBoundary(n, alpha, beta, gamma, deltaX, uInit);
            uCur(n) = (lamb*(uInit(n-1) - 2*uInit(n) + phantom) + 2*uInit(n) )/2;
        end
    else
        uCur(n) = (lamb*(uInit(j-1) - 2*uInit(j) + uInit(j+1)) + 2*uInit(j) )/2;
    end
end
plot(x,uCur), xlabel('X axis'), ylabel('Y axis'),
              title('My title'), axis([xLeft xRight uMin uMax])
drawnow



%uPast = uInit;                      % set boundary values
                                        % and the rest of the time steps...
uFut(n) = 0;                           % set boundary values

for i = 2 : nFrames
      uFut(1) = leftBoundary(i,deltaT);
      for j = 2 : n
          if j == n
              if beta == 0
                  uFut(n) = gamma/alpha;
              else
                  phantom = rightBoundary(n, alpha, beta, gamma, deltaX, uCur); 
                  uFut(n) = lamb*(uCur(n-1) - 2*uCur(n) + phantom) + 2*uCur(n) - uInit(n);
              end
          else
               uFut(j) = lamb*(uCur(j-1) - 2*uCur(j) + uCur(j+1)) + 2*uCur(j) - uInit(j);          %  + lamb*uCur(j+1)
          end
      end
      plot(x,uFut), xlabel('X axis'), ylabel('Y axis'),
                    title('My title'), axis([xLeft xRight uMin uMax])
      drawnow

      uInit = uCur;                     % update u values
      uCur  = uFut;
end

