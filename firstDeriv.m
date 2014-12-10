function df = firstDeriv(x,y)

n = length(x);
h = abs(x(2)-x(1));
df = zeros(n,1);

df(1) = ( -3*y(1) + 4*y(2) - y(3)) / (2*h);
df(n) = ( y(n-2) - 4*y(n-1) + 3*y(n)) / (2*h);

for i = 2:n-1
    df(i) = (y(i+1) - y(i-1)) / (2*h);
end

end