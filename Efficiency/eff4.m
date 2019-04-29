% Which is faster, a\b, or inv(a) * b?

clear all
clc

n = 1500;

% Create some random arrays...
a = rand(n);
b = rand(n,1);


tic
for ii = 1,n;
    x = a\b;
end
toc

tic
for ii = 1,n;
    x = inv(a) * b;
end
toc

