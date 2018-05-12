var
n,m,a,i,j,modv:longword;
tab1,tab2:array [0..1000,0..1000] of longword;
buff:char;
begin
readln(n,m);
modv:=1000000000+9;
for i:=0 to n-1 do
begin
for j:=0 to m-1 do
begin
buff:='F';
while ((buff<>'.') and (buff<>'*')) do read(buff);
if buff<>'.' then tab1[i,j]:=1;
end;
end;
for i:=1 to n-1 do  begin
tab1[i][0]:=tab1[i][0]+tab1[i-1][0]; 
tab2[i][0]:=1;
end;
for i:=1 to m-1 do
begin
tab1[0][i]:=tab1[0][i]+tab1[0][i-1];
tab2[0][i]:=1;
end;
for i:=1 to n-1  do
begin
for j:=1 to m-1 do
begin
if (tab1[i-1][j]=tab1[i][j-1]) then
begin
tab1[i][j]:=tab1[i][j]+tab1[i-1][j];
tab2[i][j]:=(tab2[i-1][j]+tab2[i][j-1]) mod modv;
end
else if (tab1[i-1][j]>tab1[i][j-1]) then
begin
tab1[i][j]:=tab1[i][j]+tab1[i-1][j];
tab2[i][j]:=tab2[i-1][j];
end
else begin
tab1[i][j]:=tab1[i][j]+tab1[i][j-1];
tab2[i][j]:=tab2[i][j-1];
end;
end;
end;
writeln(tab2[n-1][m-1]);
end.