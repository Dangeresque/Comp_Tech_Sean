f = @(x) (x^2 - 1) / (x^3 * tan(x));

x = [1.96 1.98 2.02 2.04];

Coffee = ( f(x(1)) - 8*f(x(2)) + 8*f(x(3)) - f(x(4)) ) / (12*.02)