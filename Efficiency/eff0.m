% Which is faster...
% Reading a row or column vector?

clear all
clc

tic
n = 40000000;
a = rand(1,n);     % preallocate a ROW vector a
b = rand(n,1);     % preallocate a COLUMN vector b
toc

tic                % Read the row vector
for col = 1:n
    a(col)=1;
end
toc

tic                % Read the column vector
for row = 1:n
    b(row)=1;
end
toc
