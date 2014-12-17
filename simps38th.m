function I = simps38th(x,y)
n = length(x) - 1;
h = (x(end)-x(1))/n;
sum1 = 0;
sum2 = 0;

for i=[2:3:n-1]
    sum1 = sum1 + y(i) +y(i+1);
end
for j = [4:3:n-2]
    sum2 = sum2 + y(j);
end

I = ((3*h)/8)*(y(1) + 3*sum1 + 2*sum2 + y(end));
end