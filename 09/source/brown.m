% C�������� ���������
n = 100;          % ������ �������� ����
x = n/2; y = n/2; % �������� � ��������
plot(x,y,'.')
axis([0,n,0,n]);
hold on
for k = 1:500
    % ������ ���������� ���������� �������� �� -1, 0 ��� +1
    x = x-1+round(2*rand); y = y-1+round(2*rand);
    % � �������� ����� ����� ���������� �����
    plot(x,y,'.','Color',[rand,rand,rand]); title(k)
    pause(.005)
end