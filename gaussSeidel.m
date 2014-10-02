x1 = @(x2, x3) (51 - 2*x2 - 3*x3)/8;
x2 = @(x1, x3) (23 - 2*x1 - x3)/5;
x3 = @(x1, x2) (20 + 3*x1 - x2)/6;

x1g = 0; x2g = 0; x3g = 0;


for i = 1:3
    x1g = x1(x2g, x3g);
    x2g = x2(x1g, x3g);
    x3g = x3(x1g, x2g);
end

x1g
x2g
x3g