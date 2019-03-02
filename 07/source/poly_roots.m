% полином: x^4+2x^3+3x^2+4x+5
p = [1 2 3 4 5];
r = roots(p)
scatter(real(r),imag(r),'filled','red'), grid on
xlabel('Re(z)'),ylabel('Im(z)')