program Lagrange;
const n=10;
  x: array [0..n-1] of Real = (-9.09, -8.18, -7.27, -6.36, -5.45, -4.54, -3.63, -2.72, -1.81, -0.90);
  y: array [0..n-1] of Real = (-3.47, 0.77, -1.23, -1.45, 1.16, 0.63, 2.03, -3.91, 4.44, -4.63);
  valuefind: array [0..2] of Real = (-1,0,1);
  var i, j, k: Integer;
  s, p, h: Real;
begin
  h:=x[1]-x[0];
  for k:=Low(valuefind) to High(valuefind) do begin
    s:=0;
    for j:=0 to n-1 do begin
      p:=1;
      for i:=0 to n-1 do if i<>j then
        p:=p*(valuefind[k]-x[0]-i*h)/(h*(j-i)); { Считаем (Х - Х0 - i * h) / (h * (j - i)) }
      s:=s+p*y[j];
    end;
    WriteLn('Значение в узле ',valuefind[k],' равно ',s);
  end;
end.