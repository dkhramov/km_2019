syms a b x1 x2
f1 = a*x1+x1*x2+1;
f2 = x1^2+b*x2;
[x1,x2] = solve(f1,f2,x1,x2)