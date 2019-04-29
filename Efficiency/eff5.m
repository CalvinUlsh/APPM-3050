% To vectorize or not to vectorize...

clear all
clc

n = 9000;

% Create a random array...
x = rand(1,n);


tic          % grow it
for ii = 1:n
    y1(ii) = sin(x(ii));
end
toc

tic          % pre-allocate
y2 = zeros(1,n);
for ii = 1:n
    y2(ii) = sin(x(ii));
end
toc


tic          % vectorized
y4 = sin(x);
toc

