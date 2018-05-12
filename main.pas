var
t:array [0..501,0..501] of char;
a:array [0..501] of word;
buff:byte;
n,m,k,i,j,f,s,l,pl,o:word;
begin
readln(n,m);
for i:=1 to n do for j:=1 to m do while ((t[i,j]<>'1') and (t[i,j]<>'0')) do read(t[i,j]);

for i:=1 to n do 
begin
f:=0;
s:=0;
pl:=0;
l:=0;
j:=1;

while j<m do begin
o:=1;
if ((t[i,j]='1') and (f=0)) then
begin
o:=0;
f:=j;
end;

if (((t[i,j]='1') and (s=0)) and ((f<>0) and (o=1))) then
begin
o:=0;
s:=j;
j:=m;
end;
end;

a[i]:=f-s;


end;


for i:=1 to n do writeln(a[i]);




end.