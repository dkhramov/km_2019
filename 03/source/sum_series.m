n = 100;
series = 0;

for i=1:n
    p = (((i+1)/i)^i)/(i^2);
    series = series + p;
end

disp(series)
