
x1=0:1e-6:2.842e-4;

y1 = log(0.027 .* exp(4.1) .* exp(-97000.*x1));

slope1 = (y1(end)-y1(1))/ (x1(end)-x1(1));

plot(x1,y1)

hold on;

x2 = 2.842e-4: 1e-6: 1e-3;

y2 = log(exp(4.1 + 2.406) .* exp((-97000.*x2)-(21169.*x2)));

slope2 = (y2(end)-y2(1))/ (x2(end)-x2(1));

plot(x2,y2)

hold on;

x1=0:1e-6:2.842e-4;

y1 = log(1e-5 * 0.027 .* exp(2.7) .* exp(-67000.*x1));

slope3 = (y1(end)-y1(1))/ (x1(end)-x1(1));

plot(x1,y1)

hold on;

x2 = 2.842e-4: 1e-6: 1e-3;

y2 = log(1e-5 * exp(2.7 + 2.406) .* exp((-67000.*x2)-(21169.*x2)));

slope4 = (y2(end)-y2(1))/ (x2(end)-x2(1));

plot(x2,y2)

xlabel('1/T')
ylabel('ln(D)')

legend('high T Cl-', 'low T Cl-', 'high T K+', 'low T K+');
  