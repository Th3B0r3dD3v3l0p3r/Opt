
var
n,m,a,i,j,modv:longword;
t1,t2:array [0..1000,0..1000] of longword;
buff:char;
begin
modv:=1000000009;
    readln(n,m);
    
for i:=0 to n-1 do
begin
for j:=0 to m-1 do
begin
buff:='a';
while ((buff<>'*') and buff<>'.')read(buff);
if buff='*' then t1[i,j]:=1;
//write(t[i,j],' ',i,' ',j,'   ');
end;
end;





    for i:=1 to n-1 do  begin
    t1[i][0]:=t1[i][0]+t1[i-1][0]; 
    t2[i][0]:=1;
    end;



    for i:=1 to m-1 do
    begin
    t1[0][i]:=t[0][i]+t1[0][i-1];
    t2[0][i]:=1;
    end;
    for i:=1 to n-1  do
        begin
        for j:=1 to m-1 do
            begin
            if (t1[i-1][j]=t1[i][j-1]) then
                begin
                t1[i][j]:=t1[i][j]+t1[i-1][j];
                t2[i][j]:=(t2[i-1][j]+t2[i][j-1]) mod modv;
                end;
                 else if (t1[i-1][j]>t1[i][j-1]) then
                begin
                t1[i][j]:=t1[i][j]+t1[i-1][j];
                t2[i][j]:=t2[i-1][j];
                end;
                else begin
                t1[i][j]:=t[i][j]+t1[i][j-1];
                t2[i][j]:=t2[i][j-1];
            end;
        end;
    end;
    writeln(t2[n-1][m-1]);
end.
