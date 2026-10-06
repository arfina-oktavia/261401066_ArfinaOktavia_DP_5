program soal8_hitung_gaji;
uses
crt;

var 
jam, jam_lembur : integer;
gaji_pokok, gaji_lembur, bonus, total_gaji : longint;
gol : char;
begin
clrscr;
//menghitung gaji pokok __________________________________________________________
    write('masukkan golongan gaji anda [A/B/C]: '); readln(gol);
    case gol of
        'A' : gaji_pokok:= 1500000 ;
        'B' : gaji_pokok:= 2000000 ;
        'C' : gaji_pokok:= 2500000 ;
    end;

//menghitunh gaji lembur dan bonus________________________________________________
    write('masukkan jam lembur per minggu: '); readln(jam);
    
    if (jam > 40) and ( gol <> 'C') then
        begin
            jam_lembur := jam - 40;
            writeln('jam lembur: ', jam_lembur);
            gaji_lembur := 20000 * jam_lembur;
            writeln('gaji lembur: ', gaji_lembur);
        end
    else if ( gol = 'C') and (jam > 50) then
        begin
            jam_lembur := jam - 40;
            writeln('jam lembur  : ', jam_lembur);
            gaji_lembur := 20000 * jam_lembur;
            writeln('gaji lembur: ', gaji_lembur);
            bonus := 100000;
            writeln ('bonus tambahan: 100000');

        end;

//menampilkan rincial gaji dan gaji akhir_________________________________________
    total_gaji := gaji_pokok + gaji_lembur + bonus ;
    writeln;
    writeln('________rincian hasil gaji________');
    writeln('total gaji: gaji pokok + gaji lembur + bonus' );
    writeln( gaji_pokok, ' + ', gaji_lembur, ' + ',bonus);
    writeln ('total: ', total_gaji);
end.