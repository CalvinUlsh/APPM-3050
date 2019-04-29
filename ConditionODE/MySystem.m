function xdot = MySystem( t, x )

%--------------------------------
% Define the system...
%  y'' = -y    Ans: y = C * cos(t)
%--------------------------------

xdot(1) =  x(2);
xdot(2) = -x(1);


%--------------------------------
% Return results as a column vector
%--------------------------------

xdot = xdot';