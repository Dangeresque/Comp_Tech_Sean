function n = oneNorm(A)

c = size(A, 2);
x = zeros(1, c);
maxCol = sum(abs(A(:,1)));

for i = 1:c
    x(i) = sum(abs(A(:,i)));
    
    if x(i) > maxCol
        maxCol = x(i);
    end
end

n = maxCol;
end