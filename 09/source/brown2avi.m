% Cлучайное блуждание/запись видео
n = 100;          % размер игрового поля
x = n/2; y = n/2; % начинаем с середины
plot(x,y,'.')
axis([0,n,0,n]);
hold on
for k = 1:250
    % кажда€ координата изменяетс€ случайно на -1, 0 или +1
    x = x-1+round(2*rand); y = y-1+round(2*rand);
    % и ставитс€ нова€ точка случайного цвета
    plot(x,y,'.','Color',[rand,rand,rand]); title(k);
    M(k) = getframe;
end
movie2avi(M,'brown');
