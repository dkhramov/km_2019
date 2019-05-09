nFrames = 20;

% Резервируем структуру для хранения видео
mov(1:nFrames) = struct('cdata', [],...
                        'colormap', []);

% Создадим видео
Z = peaks; surf(Z); 
axis tight
set(gca,'nextplot','replacechildren');
vw = VideoWriter('myPeaks.avi');
for k = 1:nFrames 
   surf(sin(2*pi*k/20)*Z,Z)
   mov(k) = getframe(gcf);
end

% Сохраним AVI-файл
open(vw);
writeVideo(vw, mov);
close(vw);
