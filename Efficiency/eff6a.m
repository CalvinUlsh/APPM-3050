% To vectorize or not to vectorize indicies...

clear all
clc

n = 4000;


% Create some random arrays...
a= rand(n,n);

% Change some of the values...

tic
for col = 1:n
    for row = 1:n
        a(row, col) = 1;
    end
end
toc

tic
for row = 1:n
    for col = 1:n
        a(row, col) = 1;
    end
end
toc


tic
a( [1:n], [1:n] ) = 1;
toc


tic
a( :, : ) = 1;
toc
