t = 0:pi/100:9*pi;
x = 2*sin(t);
y = cos(t); % t, x, y - ������� ����������� �������
plot3(x,y,t,'r*')
grid on
xlabel('��� X'); ylabel('��� Y'); zlabel('��� Z')
title('Prostranstvennaya spiral')
