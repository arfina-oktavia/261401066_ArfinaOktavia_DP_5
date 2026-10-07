program soal1_daftar_total_belanjaan;
uses crt;

var
i,n : integer;
H, harga, total_harga : longint;
total_bayar,Diskon : real;
begin
clrscr;
//Heading struk belanja_________________________________________________________________________________
    writeln('__________________SELAMAT DATANG DI SWALAYAN KAMI__________________');
    writeln('___________________________________________________________________');

 
//menginput dan menjumlahkan harga barang yg dibeli_____________________________________________________
    write ('jumlah barang yang dibeli: '); readln(n);
    writeln('Silahkan masukkan harga barang');   
    writeln;

    for i:= 1 to n do
        begin
            write('Harga barang ke-', i, ': Rp'); readln(H);
            total_harga := total_harga + H;
        end;
    writeln('total harga: ', total_harga);
    writeln;

//menghitung diskon dan total akhir belanja______________________________________________________________
    if (total_harga < 100000) then
    begin
        writeln('Diskon: Rp0');
        writeln('Total bayar akhir: Rp', total_harga);
    end
    else if ( total_harga >= 100000 ) and (total_harga< 500000) then
    begin
        Diskon := 0.1 * total_harga;
        writeln('Diskon: ', Diskon:0:2 );
        total_bayar:= 0.9 * total_harga;
        writeln('Total bayar akhir: Rp', total_bayar:0:2 );
    end
    else if (total_harga >= 500000) then
    begin
        Diskon := 0.2 * total_harga;
        writeln('Diskon: ', Diskon:0:2 );
        total_bayar:= 0.8 * total_harga;
        writeln('Total bayar akhir: Rp', total_bayar :0:2 );
    end;

//Closing struk belanja_________________________________________________________________________________
    writeln;
    writeln('___________________TERIMA KASIH SUDAH BERBELANJA___________________');
    writeln('_____BARANG YANG SUDAH DIBELI TIDAK DAPAT DITUKARKAN KEMBALI ______');


end.