function e = MaxEig(A)
x = ones(1,size(A, 2));
tol = eps;
err = inf;

while err > tol
    xprev = x;
    x = x*A;
    
    e = max(x);
    x = x/e;
    
    err = infNorm(x - xprev);
end
e = e;
end