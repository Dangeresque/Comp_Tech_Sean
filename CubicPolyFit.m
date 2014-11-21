function [a,Er] = CubicPolyFit(x,y)
%Returns a polynomial with the coefficients of the polynomial fit
deg = 3;
A = zeros(deg+1);
b = zeros(deg+1,1);

for i = 1:deg+1
    b(i) = sum(x.^(i-1).*y);
end

for i = 1:deg+1
    for j = 1:deg+1
        A(i,j) = sum(x.^(i+j-2));
    end
end

a = fliplr((A\b)');

Er = sum((y-polyval(a,x)).^2);

end