Z = peaks(100);
surf(Z), hold on
Zmax = max(max(Z));    % �������� �� �������� � �������
[i,j] = find(Z==Zmax); % ������� ������������� ��������
plot3(j,i,Z(i,j),'m.','MarkerSize',30) % �������� ���������� ������