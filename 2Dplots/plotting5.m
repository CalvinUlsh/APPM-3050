% Subplots. If one is good, then 4 is better!

close all              % close all graphics windows

x = linspace(0, 2*pi, 30);  % create 30 x-values

y = sin(x);
z = cos(x);

a = 2 * sin(x) .* cos(x);    % same as a = sin(2*x)
b = sin(x) ./ (cos(x) + eps);


subplot(2,2,1)       % pick upper-left of 2X2 grid
plot(x,y), axis([0 2*pi -1 1]),
           title('Figure upper-left')

subplot(2,2,2)       % pick upper-right of 2X2 grid
plot(x,z), axis([0 2*pi -1 1]),
           title('Figure upper-right')

subplot(2,2,3)       % pick lower-left of 2X2 grid
plot(x,a), axis([0 2*pi -1 1]),
           title('Figure lower-left')

subplot(2,2,4)       % pick lower-right of 2X2 grid
plot(x,b), axis([0 2*pi -20 20]),
           title('Figure lower-right')


