%I used the general form of an eigenvalue problem to solve instead of a
%method.
kCH = 5.92e2;
kCC = 15.8e2;
mH = 1.6605e-27;
mC = 12 * 1.6605e-27;
c = 3e8;
syms l %l is lambda, l = w^2

%The system of equations is in the form [a-lambda*I][u]=0 so
%det[a-lambda*I]=0. Using this polynomial, we can find lambda.

A = [(kCH/mH)-l -(kCH/mH) 0 0;
    -(kCH/mC) ((kCH+kCC)/mC)-l -(kCC/mC) 0;
    0 -(kCC/mC) ((kCH+kCC)/mC)-l -(kCH/mC);
    0 0 -(kCH/mH) (kCH/mH)-l];

d = det(A);
eigenvalues = double(solve(d, l, 0))
frequencies = abs(eigenvalues.^.5)
wavelengths = ((2*pi*c).*frequencies.^-1)*10^9 %in nanometers