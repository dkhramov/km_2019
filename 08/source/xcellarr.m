clear; clc
A = eye(3)
% ������� ������ �����
C = {A, sum(A), prod(prod(A))}
% ���������, ��� �� �������
cellplot(C)
% ��� ���...
D = cell(1,3);
D{1} = A; D{2} = sum(A); D{3} = prod(prod(A));
D
% ������� A
A = magic(3)
% ���������, ��� ������� � �������� �����
C{1}