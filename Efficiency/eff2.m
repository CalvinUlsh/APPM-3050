% Does order of calculation matter?

clear all
clc

n = 10000;

tic
a = 2*ones(n,1);
b = 3*ones(1,n);
c = 4*ones(n,1);
toc

tic
x1 = a * (b * c);
toc

tic
x2 = (a * b) * c;
toc

tic
x3 = a * b * c;
toc
