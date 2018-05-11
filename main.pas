function max(a,b:Qword):qword;
begin
if a>b then max:=a
else max:=b;


end;



var
t,p,w:array [0..1001,0..1001] of qword;
m,n,i,j:word;
modv:qword;
buff:char;
begin
modv:=1000000009;
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
p[i][j]:=p[i][j]+max(p[i][j-1],p[i-1][j])+t[i][j];

end;
end;








for i:=1 to n do
begin
for j:=1 to m do
begin

if(p[i-1,j]=p[i,j-1]) then w[i,j]:=w[i-1,j]+w[i,j-1]
else if(p[i-1,j]>p[i,j-1]) then w[i,j]:=w[i-1,j]
else w[i,j]:=w[i,j-1];


end;
end;











for i:=1 to n do
begin
for j:=1 to m do
begin
write(w[i,j]);
end;
writeln();
end;

end.
