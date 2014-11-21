xcalc = linspace(0,6,1000);
ycalc = polyval(a,xcalc);

plot(x,y,'o')
hold on
plot(xcalc,ycalc)

xlabel('Strain')
ylabel('Stress (MPa)')
legend('Data', 'Cubic Fit')