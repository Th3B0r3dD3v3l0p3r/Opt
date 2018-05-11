var
t:array [0..1001,0..1001] of char;
m,n,i,j:word;
begin
readln(n,m);
for i:=1 to n do
begin
for j:=1 to m do
begin
read(t[i,j]);
end;
end;

for i:=1 to n do
begin
for i:=1 to m do
begin
write(t[i,j]);
end;
writeln();
end;

end.
