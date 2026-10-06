program soal7_hitung_tarif_parkir;

uses
crt;

var
biaya, waktu : integer;
kendaraan : char;

begin
clrscr;
//meminta user menginput jenis kendaraan dan lama pakir_____________________________________
    write('masukkan jenis kendaraan mobil/motor/bus [M/K/B]: '); readln(kendaraan);
    write('masukkan lama parkir dalam jam: '); readln(waktu);

//menghitung biaya dan menampilkan biaya parkir_____________________________________________
    if (waktu = 1) then
        begin
            case kendaraan of
                'M' : biaya := 5;
                'K' : biaya := 2;
                'B' : biaya := 1;
            end;
            write('total biaya parkir: ', biaya); write('.000');
        end
    else if (waktu > 1) and (waktu <= 10) then
        begin
            case kendaraan of
                    'M' : biaya := 5 + (3*waktu);
                    'K' : biaya := 2 + (1*waktu);
                    'B' : biaya := 10 + (5*waktu);
                end;
            write('total biaya parkir: Rp', biaya); write('.000');
        end
    else
        begin
            case kendaraan of //tarif flat, tidak terpengruh oleh waktu lagi
                    'M' : biaya := 30 ;
                    'K' : biaya := 10;
                    'B' : biaya := 50 ;
                end;
                write('total biaya parkir: Rp', biaya); write('.000');
        end;
    
end.