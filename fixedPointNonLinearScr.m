Xguess = 1;
Yguess = 1;

gx = @(y) ( (1/2)*y^2 - 2*y +9.5)^(1/3);

gy = @(x) sqrt((-1/2)*x^2 - x + 13);
 
for i = 1:5
    Xtemp = Xguess; %because debugging and stuff!
    Ytemp = Yguess;
    
    Xguess = gx(Ytemp);
    Yguess = gy(Xtemp);
end
 
X = Xguess
Y = Yguess