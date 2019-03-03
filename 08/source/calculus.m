syms x
f = (3 * x^3 + 17 * x^2 + 6 * x + 1)/(2 * x^3 + x * -1 + 3)
% �������� ������
ezplot(f) % � ����� �������: fplot
%%
assume(x, 'real')
% ������ �������������� ���������
hasy = [limit(f, x, sym(inf)), limit(f, x, -sym(inf))]
%% ������� �� �� ������
hold on
line([-10, 10], hasy, 'Color', 'k', 'LineStyle', '--');
%% ���������� ������������� ���������
vasy = solve(2 * x^3 + x * -1 + 3 == sym(0), x)
vpa(vasy,6)
hold on
line([vpa(vasy,6), vpa(vasy,6)], [-9,15], 'Color', 'k', 'LineStyle', '--');
%% ������ ��������� ����������
g = diff(f, x)
solve(g == 0, x);
extrema = vpa(ans, 6)
%% ��������� ��� ����������
h = simplify(diff(f, x, 2))    % h = simplify(diff(g, x))
subs(h, x, extrema)
%% ������� ���������� �� �������
plot(extrema, subs(f,extrema), 'r*')
%% ������ ����� ��������
inflection = vpa(solve(h == 0, x),6)
plot(inflection, subs(f,inflection), 'g*')