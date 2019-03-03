f = @(x) x.^2 + sin(10*x);
x = -1:.01:0;
y = f(x);
plot(x,y), grid on
title('x^2 + sin(10*x)'), xlabel('x')
%%
fminbnd(f,-1,-0.6)
% ans = -0.76994
[x ymin] = fminbnd(f,-0.6,-0.4)
% x = -0.5999
% ymin = 0.6399
[x ymin] = fminbnd(f,-0.4,0)
% x = -0.15400
% ymin = -0.97581