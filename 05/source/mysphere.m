n = 50; m = 50;
t1 = -pi:pi/n:pi;
t2 = [-pi/2:pi/m:pi/2]';
X = cos(t2)*cos(t1);
Y = cos(t2)*sin(t1);
E = ones(size(t1));  % матрица единиц размерности вектора t1
Z = sin(t2)*E;
plot3(X,Y,Z,'r.'),grid,title('Сфера'), axis square % краткий способ записи функций
