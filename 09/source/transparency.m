A = imread('../images/lenna.png');
imshow(A); hold on
% Создаем квадрат вверху слева
B = ones(size(A));
B(20:40,20:40,[1,2]) = 0; % только синий цвет
upimg = imshow(B);
% Задаем прозрачность верхнего изображения
alpha(upimg,0.3)