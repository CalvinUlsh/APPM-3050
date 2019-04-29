function [h, hx] = depth(x)

h = 1 - (x/4)*0.7;
hx = -0.7/4;