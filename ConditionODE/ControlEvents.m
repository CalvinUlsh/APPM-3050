function [value, stopInteg, direction] = ControlEvents(t,x)


%------------------------------------------------------------
% Does x(1) = -8?
%------------------------------------------------------------

value = x(1) - -8;             % Detect stopping condition


%------------------------------------------------------------
% If so, then should we stop, or not stop...
% 1 for yes, 0 for no
%------------------------------------------------------------

stopInteg = 1;


%------------------------------------------------------------
% Pick one value of the condition function...
% Descending = -1, Ascending = 1, Either direction = 0
%------------------------------------------------------------

direction = 1;
