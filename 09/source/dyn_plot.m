%% ����������� ������
n = 1000;
x = linspace(0,50,n); y = exp(-0.1*x).*sin(x);
plot(x,y)
% ������� ������� �� �������� �������.
limits = get(gca, {'xlim', 'ylim'});
celldisp(limits)
%% ������������ ������
figure; grid on;
set(gca,'XLim',limits{1},'YLim',limits{2});
h = line([x(1),x(2)],[y(1),y(2)],'EraseMode','none');
for i=2:n
    set(h,'XData',[x(i-1),x(i)],'YData',[y(i-1),y(i)]);
    drawnow;
    %pause(1e-6);
end
set(h,'XData',x,'YData',y)

% ������� ��� ���� ��������
%close all