function [a, Er] = LinReg(x,y)

Sx = sum(x); Sy = sum(y);
Sxy = sum(x.*y); Sxx = sum(x.^2);
n = size(x, 2);

m = (n*Sxy - Sx*Sy)/(n*Sxx - Sx.^2);
b = (Sxx*Sy - Sxy*Sx)/(n*Sxx - Sx.^2);

a = [m b];

Er = sum((y - (m*x + b)).^2);
end