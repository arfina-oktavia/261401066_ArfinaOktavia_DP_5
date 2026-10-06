program soal3_deret1_sampai_n;

uses
crt;

var
n,i : integer;
kategori : string;

begin clrscr;
    write('masukkan nilai n: '); readln(n);
    write('pilih deret ganjil atau genap (gj/gp): '); readln(kategori);
    
    if (kategori = 'gp') then 
        begin
        write('Deret genap: ');
        i:= 1;
        while (i <= n) do
            begin
                if (i mod 5 = 0)  then
                    begin
                        i := i + 1;
                        continue;
                    end
                else if (i mod 2 <> 0)  then
                    begin
                        i:= i + 1;// inc dulu sebelum continue agar i nya bertambah
                        continue; 
                    end
                else if (i mod 2 = 0) then 
                    begin
                        write(i, ' + '); //karena diminta deret, maka pake tanda +
                        i := i + 1; 
                    end;
            end;
        end
    else if (kategori = 'gj') then
        begin
        i := 1;
        write('Deret ganjil: ');
        while (i <= n) do
            begin
                if (i mod 5 = 0)  then
                    begin
                        i := i + 1;
                        continue;
                    end
                else if (i mod 2 <> 0) then 
                    begin
                        write(i, ' + ');
                        i := i + 1;
                    end
                else //untuk skip bil genap
                    begin
                        inc(i); // bisa ditulis seperti ini i := i + 1;
                        continue;
                    end;
            end;
        end;
end.