function e = AllEig(A)
for i = 1:1000
    [Q R] = QRFactorization(A);
    A = R*Q;
end
e = diag(A);
end


function [Q R] = QRFactorization(A)
[r c] = size(A);
Q = eye(r);
R = A;

for j=1:r-1
    c = R(:, j);
    e = zeros(r,1);
    
    c(1:j-1) = 0;
    if c(j) > 0
        e(j) = 1;
    else
        e(j) = -1;
    end
    
    v = c + norm(c)*e;
    vtv = v'*v;
    vvt = v*v';
    
    H = eye(r) - (2/vtv) * vvt;
    
    Q = Q*H;
    R = H*R;
end
return
end