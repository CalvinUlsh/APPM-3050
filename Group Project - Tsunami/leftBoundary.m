function phantom = leftBoundary(n,deltaT)
if (n*deltaT < 0.5) % half of a period
    phantom = sin(2*pi*n*deltaT);
else
    phantom = 0;
end