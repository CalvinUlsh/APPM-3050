% To vectorize or not to vectorize indicies...

clear all
clc

n = 4000;
min = 1;
max = n;

% Create some random arrays...
a= rand(n,n);

% Change only some of the values...

tic
for col = min : max
    for row = min : max
        a(row, col) = 1;
    end
end
toc

tic
for row = min : max
    for col = min : max
        a(row, col) = 1;
    end
end
toc


tic
a( [min : max], [min : max] ) = 1;
toc


tic
a( :, : ) = 1;
toc

