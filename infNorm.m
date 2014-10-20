function n = infNorm(A)

r = size(A, 1);
x = zeros(r, 1);
maxRow = sum(abs(A(1,:)));

for j = 1:r
    x(j) = sum(abs(A(j,:)));
    
    if x(j) > maxRow
        maxRow = x(j);
    end
end

n = maxRow;
end