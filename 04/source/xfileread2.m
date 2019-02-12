fid = fopen('data.txt');
if f == -1, error('À פאיכא-עמ םוע!'), end
tfile = '';
while feof(fid) == 0
    tline = fgetl(fid);
    tfile = [tfile,tline,'***'];
end
fclose(fid);