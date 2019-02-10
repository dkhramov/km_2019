t = 0:pi/100:2*pi;
x = (1-sin(t)).*cos(t).^3;
y = (1/3)*(1-sin(t)).*sin(t)-(1/3)*sin(t).^2;
fill(x,y,'r')
axis square
