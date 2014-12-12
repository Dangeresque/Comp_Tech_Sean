function d2f = secondDeriv(x,y)

n = length(x);
h = abs(x(2)-x(1));
d2f = zeros(n,1);

d2f(1) = ( 2*y(1) - 5*y(2) + 4*y(3) - y(4)) / (h^2);
d2f(n) = ( -1*y(n-3) + 4*y(n-2) - 5*y(n-1) + 2*y(n)) / (h^2);
for i = 2:n-1
    d2f(i) = (y(i-1) - 2*y(i) + y(i+1)) / (h^2);
end

end