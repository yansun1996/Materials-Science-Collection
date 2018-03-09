x_marker = 160 * 1e-6;

n_u_marker = 0.88;

n_zr_marker = 0.12;

t = 24 * 3600;

% Input data

n = [0, 0.03, 0.05, 0.075, 0.1, 0.16, 0.25, 0.4, 0.6, 0.7, 0.8, 0.85, 0.88, 0.9, 0.95, 0.98, 1.0;];

x = 1e-6 * [-300, -200, -175, -150, -130, -100, -75, -50, 0, 25, 75, 100, 160, 200, 300, 400, 500;];

% index for marker plane

index = 13;

% Calculate D_inter

gradient = ( x(1,index+1) - x(1,index-1) )/( n(1,index+1) - n(1,index-1) );

tmp_x = x(1,1:index);

tmp_n = n(1,1:index);

area = trapz(tmp_n, tmp_x);

% Use Boltzman-Matano Equation to calculate D_inter

D_inter = ( -1 * area * gradient )/( 2 * t );

% Calculate D_zr

D_zr = D_inter + (n_zr_marker * x_marker/(2 * t)) * -(gradient);

% Calculate D_u

D_u = (D_inter - n_zr_marker * D_zr) / (n_u_marker);

% Display

result_inter = sprintf('D_inter = %d', D_inter);

result_zr = sprintf('D_zr = %d', D_zr);

result_u = sprintf('D_u = %d', D_u);

disp(result_inter);

disp(result_zr);

disp(result_u);


