iter = 30;   % ���-�� ��������
npix = 1000; % ������ �����������: npix � npix

% ������� ����������
dl = 1.5;
x = linspace(-dl,+dl,npix);
y = linspace(-dl,+dl,npix);
[X,Y] = meshgrid(x,y);
Z = X + i*Y;

% ��������� �����
%C=-0.488679-0.56790i;
%C=-0.561321+0.64100i;
C = 0.27334-0.00742i;

B = zeros(npix);

for l = 1:iter
    Z = Z.^2 + C;       
    B = B + (abs(Z)<2);
end;

% B �������� �����, ���������� � ������� |Z| < 2.
imagesc(B);
axis ('equal','off')