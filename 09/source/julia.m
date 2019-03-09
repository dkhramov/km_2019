iter = 30;   % кол-во итераций
npix = 1000; % размер изображения: npix х npix

% Область наблюдения
dl = 1.5;
x = linspace(-dl,+dl,npix);
y = linspace(-dl,+dl,npix);
[X,Y] = meshgrid(x,y);
Z = X + i*Y;

% Начальная точка
%C=-0.488679-0.56790i;
%C=-0.561321+0.64100i;
C = 0.27334-0.00742i;

B = zeros(npix);

for l = 1:iter
    Z = Z.^2 + C;       
    B = B + (abs(Z)<2);
end;

% B содержит точки, оставшиеся в области |Z| < 2.
imagesc(B);
axis ('equal','off')