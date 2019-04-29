% To vectorize or not to vectorize...

clear all
clc

n = 2000;

% Create a random array...
x = rand(n,n);


tic
for col = 1:n
    for row = 1:n
        sin(x(row,col));
    end
end
toc

tic
for row = 1:n
    for col = 1:n
        sin(x(row,col));
    end
end
toc

tic
sin(x);
toc
