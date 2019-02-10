n = 1e4;
x = rand(1,n);
fun = sqrt(1-x.^2);
y = rand(1,n);
ns = sum(y <= fun); % счетчик попаданий внутрь окружности
pi_ = 4*ns/n
plot(x,fun,'.',x(y <= fun),y(y <= fun),'g.',x(y > fun),y(y > fun),'r.'),axis('square')
