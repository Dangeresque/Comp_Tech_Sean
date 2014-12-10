function e = OneEig(A)
x = ones(1,size(A, 2))';

x = A*x

lambda = norm(x)
x = x/lambda

end