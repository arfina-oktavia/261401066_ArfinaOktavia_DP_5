program soa5_rekapitulasi_nilai_mahasiswa;
uses crt;
var
M, N, total_lulus,total_tidak_lulus, total_nilai, i, j, x : integer;
total_nilai_semua_mahasiwa, rata_rata, rata_nilai_semua_mahasiwa : real;
kategori, konfirmasi, konfirmasi_2 : string;

begin clrscr;
    write('masukkan banyak mahasiswa: '); read(M);
    write('masukkan banyak tugas per mahasiswa: '); read(N);
    writeln;

//rekap nilai tiap mahasiswa_________________________________________________________________________________
    total_lulus:= 0;
    for i:=1 to M do // loop luar untuk masing - masing mahasiswa
        begin
        writeln('mahasiswa ', i);
        total_nilai:= 0; //reset untuk tiap mahasiwa baru
            for j:= 1 to N do //loop dalam, untuk setiap tugas pada 1 mahasiswa
                begin
                    write('masukkan nilai tugas ', j, ': '); readln(x);
                    total_nilai:= total_nilai + x;
                end;
                rata_rata := total_nilai/ N; 
                writeln('rata- rata mahasiwa ', i, ': ', rata_rata:0:1);                
                if (rata_rata >= 65) then
                        begin
                            writeln('LULUS');
                            total_lulus := total_lulus + 1;
                         end
                     else
                        begin
                            writeln('TIDAK LULUS');
                        end;
                total_nilai_semua_mahasiwa := total_nilai_semua_mahasiwa + total_nilai ;
                writeln;
        end;

//rekap nilai seluruh mahasiswa_________________________________________________________________________________
        readln;
        writeln('_____REKAP NILAI SEMUA MAHASISWA_____');
        writeln(' total nilai semua mahasiswa: ',total_nilai_semua_mahasiwa:0:1);
        rata_nilai_semua_mahasiwa := total_nilai_semua_mahasiwa / (M*N);
        writeln('rata- rata nilai tiap mahasiwa: ', rata_nilai_semua_mahasiwa:0:1);
        writeln('total mahasiwa lulus: ', total_lulus);
        writeln('total mahasiswa tidak lulus: ', M-total_lulus);
end.