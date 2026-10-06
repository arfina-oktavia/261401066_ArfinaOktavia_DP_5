program verifikasi_kata_sandi;

uses
crt;

var
i : integer;
kata_sandi, input_sandi : string;

begin
clrscr;

    kata_sandi := 'pascal123';
    i:= 0;
    repeat
        write('masukkan kata sandi: '); readln(input_sandi);
        if (input_sandi = kata_sandi) then
            begin
                writeln('Login Berhasil! Selamat Datang');
                break;
            end
        else //percabangan untuk input sandi yg salah_____________________________________________________________________
            begin
            if (i = 0) or (i=1) then
                begin
                    writeln('Kata sandi salah, coba lagi ');
                    writeln;
                    i := i + 1;
                end
            else 
                begin
                   writeln('Kata sandi salah'); 
                   writeln('Akses Ditolak!, Akun Terkunci'); 
                   writeln;
                   i := i+1;
                end;
            end;
    until (i = 3);      
end.