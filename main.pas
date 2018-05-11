function max(a,b:Qword):qword;
begin
if a>b then max:=a
else max:=b;
end;

var
n,m,i,j:word;
z:char;
t,p,l:array [0..1001,0..1001] of Qword;
begin
    readln(n,m);
    for i:=1 to n do
    begin
    for j:=1 to m+1 do
    begin
    read(z);
    if j<=m then
    begin
    if z='*' then t[i,j]:=1;
    end;
    end;
    end;

    p[0][0]:=t[0][0];
    p[0][0]:=t[0][0];
    l[0][0]:=1;
    l[0][0]:=1;
  
    for i:=1 to n do
    begin
        p[i][0]:=p[i-1][0]+t[i][0];
        l[i][0]:=1;
    end;
    for i:=1 to m do
    begin
        p[0][i]:=p[0][i-1]+t[0][i];
        l[0][i]:=1;
    end;
    for  i:=1 to n do
    begin
        for j:=1 to m do
        begin
            p[i][j]:=max(p[i-1][j], p[i][j-1])+t[i][j];
            if(p[i-1][j]=p[i][j-1]) then
            begin
                l[i][j]:=(l[i-1][j] mod 1000000009+l[i][j-1] mod 1000000009) mod 1000000009;
            end
            else
            begin
                if(p[i-1][j]>p[i][j-1]) then
                begin
                    l[i][j]:=l[i-1][j];
                end
                else
                begin
                    if(p[i-1][j]<p[i][j-1]) then
                    begin
                        l[i][j]:=l[i][j-1];
                    end;
                end;
            end;
        end;
    end;
    for i:=1 to n do
begin
for j:=1 to m do
begin
    write(l[i][j],' ');
end;
writeln();
  end;




end.
 
