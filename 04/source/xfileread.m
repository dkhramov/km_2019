f = fopen('c:/data.txt','rt'); % ������ ���������� � ������������
if f == -1, error('� �����-�� ���!'), end
tfile = ''; % ������� ������ ����� ������
while feof(f) == 0
    line = fgetl(f);
    tfile = char(tfile,line); % ������� line � ������ �����
end
fclose(f);
disp(tfile) % ���������, ��� ����������