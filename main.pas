var
t:array [0..501,0..501] of char;
buff:byte;
n,m,k,i,j:word;
begin
readln(n,m);
for i:=1 to n do for j:=1 to m do while (t[i,j]<>'1') and (t[i,j]<>'0') do read(t[i,j]);

for i:=1 to n do for j:=1 to m do write(t[i,j]);

end.