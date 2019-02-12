function y = pwfun(x)
% ��������� �������� �������
%     1-sin(x), x<-pi,
% y = x,       -pi<=x<0,
%     cos(2*x), x>=0.
% �������������: y = pwfun(x), x - �����
if isnan(x) | isinf(x)
    warning('�������� - NaN');
end
if ~isnumeric(x) | ~isscalar(x)
    error('x - ������ ��������� ����')
end
if ~isreal(x)
    warning('��������! x - ����������� �����')
end
if x < -pi
    y = 1-sin(x);
elseif x >= -pi & x <0
    y = x;
else
    y = cos(2*x);
end