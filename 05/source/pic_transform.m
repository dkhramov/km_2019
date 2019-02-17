A = imread('kitten.bmp');
[N,M] = size(A);
[i,j] = find(~A);
x = j; y = M-i;
plot(x,y,'.')
v = 2*max([N,M]);
grid on
axis([-v v -v v])
axis square
hold on
%%
R = @(phi) [cos(phi),sin(phi); -sin(phi),cos(phi)];
S = @(sx,sy) [sx,0; 0,sy];
%%
a =-pi/3;
B = R(a)*[x';y'];
plot(B(1,:),B(2,:),'r.')
%%
sx = 1.5; sy = 1.5;
tx = 50; ty =-100;
C = S(sx,sy)*[x';y'];
plot(C(1,:)+tx,C(2,:)+ty,'g.')
