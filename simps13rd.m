function I = simps13rd(x,y)
n = length(x) - 1;
h = (x(end)-x(1))/n;
sum1 = 0;
sum2 = 0;

for i=[2:2:n]
    sum1 = sum1 + y(i);
end
for j = [3:2:n-1]
    sum2 = sum2 + y(j);
end

I = (h/3)*(y(1) + 4*sum1 + 2*sum2 + y(end));
end