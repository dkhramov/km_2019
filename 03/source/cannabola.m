t = -pi:0.01:pi;
rho = (1+sin(t)).*(1-0.9.*abs(sin(4*t))).*(0.9+0.05*cos(200*t));
x = rho.*cos(t);
y = rho.*sin(t);
patch(x,y,'g')
