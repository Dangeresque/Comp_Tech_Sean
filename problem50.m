%I used the general form of an eigenvalue problem to solve instead of a
%built in or user defined function.
kCH = 5.92e2;
kCC = 15.8e2;
mH = 1.6605e-27;
mC = 12 * 1.6605e-27;
c = 3e8;
syms l %l is lambda, l = w^2

%The system of equations is in the form [a-lambda*I][u]=0 so
%det[a-lambda*I]=0. Using this polynomial, we can find lambda.
%AlI is [a-lambda*I]

AlI = [(kCH/mH)-l -(kCH/mH) 0 0;
    -(kCH/mC) ((kCH+kCC)/mC)-l -(kCC/mC) 0;
    0 -(kCC/mC) ((kCH+kCC)/mC)-l -(kCH/mC);
    0 0 -(kCH/mH) (kCH/mH)-l];

d = det(AlI);

fprintf('a) \n')

eigVal = double(solve(d, l, 0))
freq = abs(eigVal.^.5) %abs to get rid of imaginary component for easy reading
%Split up for readability because one wavelength is so different.
waveL1 = 2*pi*c./freq(1)
waveL2 = 2*pi*c./freq(2)
waveL3 = 2*pi*c./freq(3)
waveL4 = 2*pi*c./freq(4)

fprintf('b) \n')

%[a-lambda*I][u]=0
%I wrote this part more general so it can be easily put in a function.

u = zeros(4,4);
for i = 1:4
    AlI = double(subs(AlI, l, eigVal(i)));
    if det(AlI) ~= 0
        fprintf('The determinant is non-zero, so vectors can not be found using analyitcal methods!')
        fprintf('\nSwitching to Numerical methods: \n')
        
        A = [(kCH/mH) -(kCH/mH) 0 0;
            -(kCH/mC) ((kCH+kCC)/mC) -(kCC/mC) 0;
            0 -(kCC/mC) ((kCH+kCC)/mC) -(kCH/mC);
            0 0 -(kCH/mH) (kCH/mH)];
        
        [u l] = eig(A);
        break
    else
        u(i,:) = gaussJordan(AlI, [0 0 0 0]');
    end
end

u