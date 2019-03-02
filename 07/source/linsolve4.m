% Плохо обусловленная система
A = [5 7; 7 10];
b = [12; 17];
det(A)
x = A\b
x = A^-1*b
x = inv(A)*b
x = mldivide(A,b)