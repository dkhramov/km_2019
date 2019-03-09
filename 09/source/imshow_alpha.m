A = imread('../images/lenna.png');
subplot(2,2,1); imshow(A); title('Original');
subplot(2,2,2); h = imshow(A); alpha(h,0.2); title('alpha = 0.2');
subplot(2,2,3); h = imshow(A); alpha(h,0.5); title('alpha = 0.5');
subplot(2,2,4); h = imshow(A); alpha(h,0.8); title('alpha = 0.8');