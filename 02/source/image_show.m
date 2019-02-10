clear
A = imread('lena.png');
imshow(A)
% превращаем изображение в монохромное
A(:,:,[1,2]) = [];
figure
imshow(A)