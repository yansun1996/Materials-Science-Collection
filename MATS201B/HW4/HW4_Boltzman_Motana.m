x = 0: 0.1: 1.9;

y = [0.00 0.01 0.03 0.12 0.44 0.58 0.71 0.80 0.85 0.89 0.91 0.93 0.95 0.96 0.97 0.98 0.98 0.99 0.99 1.00;];

D = [];

gradient = [];

t = 312 * 3600;

gradient(end+1) = ( x(1,2) - x(1,1) )/( y(1,2) - y(1,1) );

for j=2:1:19

    gradient(end+1) = ( x(1,j+1) - x(1,j-1) )/( y(1,j+1) - y(1,j-1) );
    
end

gradient(end+1) = ( x(1,end) - x(1,end-1) )/( y(1,end) - y(1,end-1) );

area = [];

area(end+1) = 0;

for j=2:1:20
   
    tmp_x = x(1,1:j);
    
    tmp_y = y(1,1:j);
    
    area(end+1) = trapz(tmp_x,tmp_y);
    
end

for j=1:1:20
   
    D(end+1) = ( 1e-6 * area(1,j) * gradient(1,j) )/( 2 * t );
    
end

plot(y,D);

xlabel('c');

ylabel('D');