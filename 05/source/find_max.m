Z = peaks(100);
surf(Z), hold on
Zmax = max(max(Z));    % максимум по столбцам и строкам
[i,j] = find(Z==Zmax); % индексы максимального элемента
plot3(j,i,Z(i,j),'m.','MarkerSize',30) % отмечаем фиолетовой точкой