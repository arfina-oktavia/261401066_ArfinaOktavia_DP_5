program soal6_nilai_akhir_matkul;
uses crt;
var
tugas, uts, uas, hadir : integer;
nilai_akhir, kehadiran : real;
lulus_atau_tidak, indeks : string;
label a;
begin clrscr;
//input semua nilai_______________________________________________
    write('masukkan nilai tugas: '); readln(tugas);
    write('masukkan nilai UTS: '); readln(uts);
    write('masukkan nilai UAS: '); readln(uas);
    write('masukkan total hadir dari 10 pertemuan: '); readln(hadir);


//pengolahan nilai_______________________________________________
    nilai_akhir := (0.3 * tugas) + (0.3 * uts) + (0.4* uas);
    kehadiran := hadir/10; {karena total 10 pertemuan}
    if (nilai_akhir >= 60) and (kehadiran >= 0.8) then
        begin
            lulus_atau_tidak:= 'LULUS';
        end
    else
        begin
            lulus_atau_tidak:= 'TIDAK LULUS';
            goto a;
        end;

    case round(nilai_akhir) of //case of tidak bisa bil real jadi pake pembulatan (round)
        85..100 : indeks:= 'A';
        75..84 : indeks := 'B';
        60..74 : indeks := 'C';
        50..59 : indeks := 'D';
         0..49 : indeks := 'E';
    else
        begin
            a:
            indeks := ('E');
        end;
    end;

//tampilan akhir_______________________________________________
    writeln('_________________________RAPORT_________________________');
    writeln('Nilai akhir: ', nilai_akhir:0:1);
    writeln('keterangan: ', lulus_atau_tidak);
    writeln('indeks nilai: ', indeks);
end.