function x = gaussElim(A, b)

[rA cA] = size(A);
[rb cb] = size(b);

M = [A b];

for j = 1:cA
    for i = (j+1):rA
        M(i,:) =  M(i,:) - ((M(i,j) / M(j,j)) * M(j,:));
        
    end
end


x = zeros(rb, cb);
x(rb) = M(rA, cA+cb) / M(rA, cA);

for i = rb-1:-1:1
    x(i) = (M(i, cA+cb) - M(i, i+1:rA)*x(i+1:rb))/M(i,i);
end
end