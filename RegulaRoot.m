function Xs = RegulaRoot(Fun, a, b, ErrMax)

if Fun(a)*Fun(b) >0
    error('Your bounds do not contain the solution! You should talk with your friend calculus!')
end

Xs = [];

for i = 1:100
    Xtmp = Xs;
    
    Xs = (a*Fun(b) - b*Fun(a)) / (Fun(b) - Fun(a));
   
    if Fun(a)*Fun(Xs) < 0
        b = Xs;
    else
        a = Xs;
    end
    
    CalcErr = abs((Xs - Xtmp)/Xtmp);
    if CalcErr <= ErrMax
        break
    end
    if i == 100
        error('It is taking too long to converge!')
    end
end

end