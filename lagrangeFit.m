function ycalc = lagrangeFit(x, y, val)

n = size(x,2);

f = ones(1,n);

for i=1:n
    
    for j=1:n
        if j == i
            continue
        end
        
        f(i) = f(i)*(val-x(j))/(x(i)-x(j))
        
    end
end

ycalc = sum(y.*f);

end