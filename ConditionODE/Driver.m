clc                     % clear the command window
clear all               % clear all variables
close all               % close all open figure windows

%-------------------------------------------------------------
%     Set initial conditions and parameters
%-------------------------------------------------------------

tInit = 0;                      % integration interval
tFin  = 2*pi;

xInit(1) = 3;                   % initial conditions
xInit(2) = 9;

%-------------------------------------------------------------
%     Integrate the system with a stopping condition
%-------------------------------------------------------------

options = odeset('Events', @ControlEvents,...
                 'Refine', 12,...
                 'RelTol',1e-3,...
                 'AbsTol',0.001);

[t, x, te, xe, ie] = ode45( @MySystem, [tInit, tFin], xInit, options );


%-------------------------------------------------------------
%     Plot the results
%-------------------------------------------------------------

plot(t,x)                   % basic plot of both curves

