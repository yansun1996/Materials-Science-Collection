clc;

x=0:1e-8:1e-3;

for t = 3:3:30 

    y=(16.287./sqrt(t.*3600)).*((exp((-x.^2)./((1.2e-13).*t.*3600)))+exp(-1.*(((0.001-x).^2))./((1.2e-13).*t.*3600)));

    plot(x,y);

    hold on;
    
end 

xlabel('x / m')
ylabel('C(x) / mole * m^-3')

legend('t = 3 h', 't = 6 h', 't = 9 h', 't = 12 h', 't = 15 h', 't = 18 h', 't = 21 h', 't = 24 h', 't = 27 h', 't = 30 h');
    