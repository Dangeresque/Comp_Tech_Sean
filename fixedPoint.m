function ret = fixedPoint(gOfX, guess, iterations)

for i = 1:iterations
    guess = gOfX(guess);
end

ret = guess;

end