clear; clc
A = eye(3)
% создаем массив ячеек
C = {A, sum(A), prod(prod(A))}
% посмотрим, как он устроен
cellplot(C)
% или так...
D = cell(1,3);
D{1} = A; D{2} = sum(A); D{3} = prod(prod(A));
D
% изменим A
A = magic(3)
% посмотрим, что сталось с массивом ячеек
C{1}