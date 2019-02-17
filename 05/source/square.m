clear; clc
% ������� �������� � ��� ����
x = [-1,-1,1,1];
y = [-1,1,1,-1];
C = [1;1;0;0];
% ��������� ��������
fill(x,y,C)
title('�������� �������')
axis ([-10 10 -10 10])
axis square
grid on

pause(2)

% ������� �������������� ���������:
a = 20*pi/180; % ���� ��������
s = 3; % ����������� ���������������
m = 1; % ����������� ����������� �����������
b = 30*pi/180; % ���� ������

hold on
% ��������� � ������� ���������������

R = [ cos(a), sin(a); ...
     -sin(a), cos(a)];
xn = R*[x;y];
fill(xn(1,:),xn(2,:),C)
title(['������� �� ���� a = ', num2str(a), ' ���.'])
pause(2)

S = [s, 0; ...
     0, s];
xn = S*R*[x;y];
fill(xn(1,:),xn(2,:),C)
title(['��������������� � s = ', num2str(s), ' ����'])
pause(2)

M = [-m, 0; ...
     0, -m];
xn = M*S*R*[x;y];
fill(xn(1,:),xn(2,:),C)
title(['���������� ����������� � m = ', num2str(m)'])
pause(2)

Sh = [cos(b), sin(b); ...
      sin(b), cos(b)];
xn = Sh*M*S*R*[x;y];
fill(xn(1,:),xn(2,:),C)
title(['����� �� ���� b = ', num2str(b), ' ���.'])