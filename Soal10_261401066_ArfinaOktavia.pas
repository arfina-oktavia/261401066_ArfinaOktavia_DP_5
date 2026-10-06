program soal10_nama_hari;
uses
crt;

var
hari : string;
urutan : integer; 

begin
clrscr;  
    write('masukkan hari ke berapa [1-7]: '); readln(urutan);
    case urutan of
        1 : hari := 'senin';
        2 : hari := 'selasa';
        3 : hari := 'rabu';
        4 : hari := 'kamis';
        5 : hari := 'jumat';
        6 : hari := 'sabtu';
        7 : hari := 'minggu';
    end;

    writeln('hari: ', hari);

end.