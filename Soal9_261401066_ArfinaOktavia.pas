program Soal9_jumlah_hari_dalam_suatu_bulan;

uses crt;

var
tahun, bulan : integer;

begin clrscr;
//input tahun dan bulan dari user_____________________________________________________________________________________
    write('masukkan tahun: '); readln(tahun);
    write('masukkan bulan ke berapa: '); readln(bulan);

//menentukan jumlah hari dan menampilkannya_________________________________________________________________________
    if (tahun mod 400 = 0) and (bulan = 2) then
        begin
           writeln('jumlah hari: 29 hari');
        end
    else if (tahun mod 4 = 0) and (tahun mod 100 <>0) and (bulan = 2) then
        begin
           writeln('jumlah hari: 29 hari');
        end
    else
    begin
        if (bulan = 1) or (bulan = 3) or (bulan = 5) or (bulan = 7) or (bulan = 8) or (bulan = 10) or (bulan = 12) then
            begin
                writeln('jumlah hari: 31 hari');
            end
        else if (bulan = 4) or (bulan = 6) or (bulan = 9) or (bulan = 11) then
        begin
                writeln('jumlah hari: 30 hari');
        end
        else//bulan 2 bukan kabisat
        begin
            writeln('jumlah hari: 28 hari');
        end;

    end;
end.
