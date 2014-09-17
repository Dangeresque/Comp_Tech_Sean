Xguess = 1;
Yguess = 1;

syms x y
f1 = x^2 + 2*x + 2*y^2 - 26;
f2 = 2*x^3 - y^2 + 4*y - 19;

for i = 1:5
    f1g = subs(f1, [x, y], [Xguess Yguess]);
    f2g = subs(f2, [x, y], [Xguess Yguess]);
    
    j = [diff(f1, x) diff(f1, y); diff(f2, x) diff(f2, y)];
    j = subs(j, [x y], [Xguess, Yguess]);
    delta = j^-1 * [-f1g; -f2g];
    
    Xguess = double(Xguess + delta(1));
    Yguess = double(Yguess + delta(2));
end

X = Xguess
Y = Yguess