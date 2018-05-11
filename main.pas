var
t:array [0..1001,0..1001] of char;
m,n,i,j:word;
begin
readln(m,n);
for i:=1 to n do
begin
read(t[i,1]);
end;

for i:=1 to n do
begin
write(t[i,1]);
end;


end.
