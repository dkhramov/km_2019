%%
% Функция: x^3-1.1*x^2-2.2*x+1.8
f = @(x) x^3-1.1*x^2-2.2*x+1.8;
% задаем начальное приближение
x1= fzero(f,-1.5)
% или интервал поиска
x2= fzero(f,[1.5 2])
% Еще один вариант использования функции fzero:
% cоздадим в отдельном файле (poly4.m) функцию poly4
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
