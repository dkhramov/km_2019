f = fopen('c:/data.txt','rt'); % пишите объяснения в комментариях
if f == -1, error('ј файла-то нет!'), end
tfile = ''; % вначале массив строк пустой
while feof(f) == 0
    line = fgetl(f);
    tfile = char(tfile,line); % заносит line в массив строк
end
fclose(f);
disp(tfile) % посмотрим, что получилось