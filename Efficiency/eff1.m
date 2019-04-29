% Which is faster...
% Row or column addressing?

clear all
clc

tic
n = 5000;
a = rand(n);       % preallocate matrix a
toc

tic                % read by ROW
for row = 1:n
    for col = 1:n
        a(row, col)=1;
    end
end
toc

tic                % read by COLUMN
for col = 1:n
    for row = 1:n
        a(row, col)=1;
    end
end
toc
