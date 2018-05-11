var
t:array [0..1001,0..1001] of byte;
m,n,i,j:word;
buff:char;
begin
readln(n,m);
for i:=1 to n do
begin
for j:=1 to m do
begin
read(buff);
if buff='*' then t[i,j]:=1;
write(t[i,j],' ',i,' ',j,'   ');
end;
end;

for i:=1 to n do
begin
for j:=1 to m do
begin
write(t[i,j]);
end;
writeln();
end;

end.
