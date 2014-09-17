function ret = newtonsMethodLinear(poly, guess, iterations)

for i = 1:iterations
    guess = guess - (polyval(poly, guess)/polyval(polyder(poly), guess));
end

ret = guess;

end