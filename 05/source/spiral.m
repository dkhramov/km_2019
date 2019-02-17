t = 0:pi/100:9*pi;
x = 2*sin(t);
y = cos(t); % t, x, y - векторы одинакового размера
plot3(x,y,t,'r*')
grid on
xlabel('ось X'); ylabel('ось Y'); zlabel('ось Z')
title('Prostranstvennaya spiral')
