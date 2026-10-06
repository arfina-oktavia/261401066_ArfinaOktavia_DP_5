program soal4_program_kalkulator;

uses
crt;

var
menu_operasi, x, y : integer;
hasil : real;
konfirmasi_akhir : string;


begin
clrscr;
//tampilan awal user___________________________________________________________________________________
    writeln('______menu operasi______');
    writeln('1: Penjumlahan');
    writeln('2: Pengurangan');
    writeln('3: Perkalian');
    writeln('4: Pembagian');
    writeln('5: DIV');
    writeln('6: MOD');
    writeln;

//proses menghitung operand____________________________________________________________________________
    repeat
        write('dari 1- 7 Pilih menu operasi: '); readln(menu_operasi);
        writeln('masukan 2 operand [operand1 spasi operand 2]: '); readln(x,y);
        case menu_operasi of
            1 : hasil := x + y ; // operasi harus pake assignment operator karena akan di inputkan nilai
            2 : hasil := x - y;
            3 : hasil := x * y;
            4 : hasil := x / y;
            5 : hasil := x div y;
            6 : hasil := x mod y;
        end;

//tampilan akhir dan konfirmasi lanjut atau tidak______________________________________________________
    writeln('hasil perhitungan: ',hasil:0:1);
    writeln('Apakah anda ingin lanjut atau tidak [y/n]'); readln(konfirmasi_akhir);
    writeln;
    until (konfirmasi_akhir = 'n');

    writeln('PROGRAM SELESAI');
end.