A = imread('../images/lenna.png');
imshow(A); hold on
% ������� ������� ������ �����
B = ones(size(A));
B(20:40,20:40,[1,2]) = 0; % ������ ����� ����
upimg = imshow(B);
% ������ ������������ �������� �����������
alpha(upimg,0.3)