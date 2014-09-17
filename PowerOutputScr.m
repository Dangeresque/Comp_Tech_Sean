q = 1.6022e-19;
kb=1.3806e-23;
Voc=.5;
T=297;

E = .001;
Vmp = .5;

g = @(Vmp) Voc - (log(1+ Vmp * (q/(kb*T))) / (q/(kb*T)));
Ere = inf;
while Ere > E
    VmpTmp = Vmp;
    Vmp = g(Vmp);
    Ere = abs((Vmp - VmpTmp)/VmpTmp);
end

Vmp