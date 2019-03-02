%%
% �������: x^3-1.1*x^2-2.2*x+1.8
f = @(x) x^3-1.1*x^2-2.2*x+1.8;
% ������ ��������� �����������
x1= fzero(f,-1.5)
% ��� �������� ������
x2= fzero(f,[1.5 2])
% ��� ���� ������� ������������� ������� fzero:
% c������� � ��������� ����� (poly4.m) ������� poly4
x3 = fzero(@poly4,0.5)
%%
% fzero(f,[-1.5 1.5])
% Error using fzero
% The function values at the interval endpoints must differ in sign.
%%
r = roots([1 -1.1 -2.2 1.8])
% r =
% 
%    -1.3970
%     1.7685
%     0.7286
