function y = pwfun(x)
% вычисл€ет значени€ функции
%     1-sin(x), x<-pi,
% y = x,       -pi<=x<0,
%     cos(2*x), x>=0.
% использование: y = pwfun(x), x - число
if isnan(x) | isinf(x)
    warning('јругмент - NaN');
end
if ~isnumeric(x) | ~isscalar(x)
    error('x - скал€р числового типа')
end
if ~isreal(x)
    warning('¬нимание! x - комплексное число')
end
if x < -pi
    y = 1-sin(x);
elseif x >= -pi & x <0
    y = x;
else
    y = cos(2*x);
end