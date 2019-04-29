clc                 % clear command window
clear all           % clear all variables
close all           % close all open figure windows

%-------------------------------------------------------------
%     Initial conditions and parameters
%-------------------------------------------------------------

tInit  = 0;             % integration interval
tFin   = 2.0*pi;

x1Init = 3;             % initial conditions
x2Init = 9;

%-------------------------------------------------------------
%     Integrate the system
%-------------------------------------------------------------

% You can hard code the system file name...
[t,x] = ode45('MySystem', [tInit, tFin], [x1Init, x2Init]);


% Or...

% Input the system file name from the keyboard...
% ss = input('What is your system name (in single quotes)? ');
% [t,x] = ode45(ss, [tInit, tFin], [x1Init, x2Init]);

%-------------------------------------------------------------
%     Plot the results
%-------------------------------------------------------------

plot(t,x)                   % basic plot of both curves

% plot(t,x(:,2))            % basic plot of only second curve


% hold on                   % plot both curves with points
% plot(t,x,'o')


% plot(t,x), xlabel('Time'), ylabel('Y')
% plot(t,x), xlabel('Time'), ylabel('Y'), gtext('A')
% plot(t,x), xlabel('Time'), ylabel('Y'), gtext('A'),  gtext('B')


% Phase plots
% plot(x(:,1), x(:,2)), xlabel('X label'), ylabel('Y label')
