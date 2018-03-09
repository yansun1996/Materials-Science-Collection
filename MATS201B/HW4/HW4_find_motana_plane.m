
x = 0: 0.1: 1.9;

y = [0.00 0.01 0.03 0.12 0.44 0.58 0.71 0.80 0.85 0.89 0.91 0.93 0.95 0.96 0.97 0.98 0.98 0.99 0.99 1.00;];

plot(y, x);

ylabel('x / m')

xlabel('C(x) / mole * m^-3')

q = [];

% Loop of looking for Matano plane

for i=0:0.00001:1
    
    q(end+1) = trapz(y, x-i);
    
    if q(end) < 0
        
        break;

    end
    
end

result = sprintf('Motana Plane is x = %f mm', i);

disp(result);