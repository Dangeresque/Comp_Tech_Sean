function y = lstSqrRegFit(x, y)

Sx = sum(x); Sy = sum(y);
Sxy = sum(x.*y); Sxx = sum(x.^2);
n = size(x, 2);

m = (n*Sxy - Sx*Sy)/(n*Sxx - Sx.^2)
b = (Sxx*Sy - Sxy*Sx)/(n*Sxx - Sx.^2)

y = @(x) m*x + b;

end