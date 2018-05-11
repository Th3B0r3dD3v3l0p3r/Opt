var
t,p:array [0..1001,0..1001] of qword;
m,n,i,j:word;
buff:char;
begin
readln(n,m);
for i:=1 to n do
begin
for j:=1 to m+1 do
begin
read(buff);
if j<=m then
begin
if buff='*' then t[i,j]:=1;
//write(t[i,j],' ',i,' ',j,'   ');
end;
end;
end;

for i:=1 to n do
begin
for j:=1 to m do
begin
p[i][j]:=max(p[i][j-1],p[i-1][j]);
if t[i][j]=1 then p[i][j]:=p[i][j]+1;
end;
end;



for i:=1 to n do
begin
for j:=1 to m do
begin
write(p[i,j]);
end;
writeln();
end;

end.
