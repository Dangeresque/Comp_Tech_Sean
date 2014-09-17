Xguess = 1;
Yguess = 1;

g1x = @(x,y) (-x^2 - 2*y^2 + 26)/2;

g2y = @(x,y) (-2*x^3 + y^2 + 19)/4;
 
for i = 1:5
    Xtemp = Xguess; %because debugging and stuff!
    Ytemp = Yguess;
    
    Xguess = g1x(Xtemp, Ytemp);
    Yguess = g2y(Xtemp, Ytemp);
end
 
X = Xguess
Y = Yguess