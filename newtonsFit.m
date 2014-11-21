function ycalc = newtonsFit(x, y, val)
%This function is heavily based on the one given in the book

n = max(size(x));
a = zeros(1,n);
divDiffs = zeros(n-1,n-1);

for i=1:n-1
    divDiffs(i,1) = (y(i+1) - y(i)) / (x(i+1) - x(i));
    
end

for j=2:n-1
    for i=1:n-j
    divDiffs(i,j) = (divDiffs(i+1,j-1) - divDiffs(i,j-1))/ (x(j+i) - x(i));
    end
end
a(1) = y(1);
for i=2:n
    a(i) = divDiffs(1,i-1);
end

ycalc = a(1);
xn = 1;
for i=2:n
    xn = xn*(val-x(i-1));
    ycalc = ycalc+a(i)*xn;
end