% 2. Система не имеет решений.
A = [2 3; 4 6];
b = [6; 10];
eps = 1e-4;
if abs(det(A))<eps, error('det(A)=0'), end
x = A\b