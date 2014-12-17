function I = compTrap(x,y)
n = length(x) - 1;
sum = 0;
for i=1:n
    sum = sum + (y(i)+y(i+1))*(x(i+1)-x(i));
end
I = .5*sum;
end