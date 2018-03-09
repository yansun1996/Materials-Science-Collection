clear
syms x
f1 = (4.665e-3)/(x)
f2 = 0.016963*(1.33749-(x))
fplot(f1,[1e-10,1])
hold on
fplot(f2,[1e-10,1])