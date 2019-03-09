A = imread('../images/lenna.png');
subplot(2,2,1); imshow(A); title('Original');
subplot(2,2,2); imshow(A(:,:,1)); title('Red');
subplot(2,2,3); imshow(A(:,:,2)); title('Green');
subplot(2,2,4); imshow(A(:,:,3)); title('Blue');