clear
A = imread('lena.png');
imshow(A)
% ���������� ����������� � �����������
A(:,:,[1,2]) = [];
figure
imshow(A)