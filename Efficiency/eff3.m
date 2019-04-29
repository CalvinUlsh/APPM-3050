% Which is faster, pre-allication or
% creating as you go along?

clear all
clc

n = 10000;

% pre-allocate the array...
tic
a = zeros(1,n);
for ii = 1:n
    a(ii) = 1;
end
toc

% concatenate new elements...
tic
b = [];
for ii = 1:n
    b = [b,1];
end
toc

% concatenate new elements...
tic
for ii = 1:n
    c(ii) = 1;
end
toc

