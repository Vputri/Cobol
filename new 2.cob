       IDENTIFICATION DIVISION.
       PROGRAM-ID. NILAI1.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 N PIC 9.
       77 I PIC 9 VALUE 1.
       01 VAR.
           02 PIL PIC 99.
       01 TAMPILAN.
           02 NPM PIC X(8)VALUE 'NPM'.
           02 FILLER PIC X(3) VALUE SPACES.
           02 NAMA PIC X(20) VALUE 'NAMA'.
           02 FILLER PIC X(3) VALUE SPACES.
           02 NILAI PIC 9999,99 VALUE 'NILAI'.
           02 FILLER PIC X(3) VALUE SPACES.
           02 KETERANGAN PIC X(10) VALUE 'kETERANGAN'.
           02 FILLER PIC X(3) VALUE SPACES.
       SCREEN SECTION.
       01 CLS.
           02 BLANK SCREEN.
       01 LAYAR-MENU.
           02 BLANK SCREEN.
           02 LINE 3 COLUMN 2 VALUE "VERSI : IF..GO..TO".
           02 LINE 5 COLUMN 5 VALUE "<<<< MENU UTAMA >>>>".
           02 LINE 7 COLUMN 5 VALUE "1. INPUT".
           02 LINE 8 COLUMN 5 VALUE "2. OUTPUT".
           02 LINE 9 COLUMN 5 VALUE "3. EXIT".
           02 LINE 10 COLUMN 5 VALUE "===================".
           02 LINE 12 COLUMN 5 VALUE "PILIHAN ANDA : ".
           02 COLUMN PLUS 2 PIC 9 TO PIL.
       01 PESAN.
           02 LINE 15 COLUMN 10 VALUE
           "PRESS ENTER FOR COME BACK TO MAIN MENU".
       PROCEDURE DIVISION.
       AWAL.
           DISPLAY PESAN.
           DISPLAY LAYAR-MENU.
           ACCEPT LAYAR-MENU.
           IF PIL = 1 GO TO PAR1-INPUT.
           IF PIL = 2 GO TO PAR2-OUTPUT.
           IF PIL = 3 GO TO AKHIR ELSE GO TO SALAH.
       PAR1-INPUT.
           DISPLAY CLS.
           DISPLAY 1,8 "PILIHAN 1"
           DISPLAY 4,4 "JUMLAH DATA : ".
           ACCEPT N.
           COMPUTE I=1.
           PERFORM ISI N TIMES.
           DISPLAY PESAN.
           GO TO AWAL.
       PAR2-OUTPUT.
           DISPLAY CLS.
           DISPLAY 1,8 "PILIHAN 2".
           DISPLAY ' '.
           COMPUTE I=1.
           DISPLAY TAMPILAN.
           PERFORM TAMPIL N TIMES.
           DISPLAY 17,5 "PRESS ENTER".
           GO TO AWAL.
       SALAH.
           DISPLAY CLS.
           DISPLAY 17,5 "MAAF ANDA SALAH INPUT".
           DISPLAY 19,5 "TEKAN ENTER!!!".
           GO TO AWAL.
       ISI.
           DISPLAY CLS.
           DISPLAY 5,5 "NPM : ".
           ACCEPT NPM.
           DISPLAY 7,5 "NAMA : ".
           ACCEPT NAMA.
           DISPLAY 9,5 "NILAI : ".
           ACCEPT NILAI.
           IF NILAI > 70
               DISPLAY 11,5 "KETERANGAN : LULUS".
               ACCEPT KETERANGAN.
           IF NILAI < 70
               DISPLAY 11,5 "KETERANGAN : GAGAL".
               ACCEPT KETERANGAN.
           COMPUTE I = I + 1.
       TAMPIL.
           DISPLAY ' ', NPM, ' ', NAMA, ' ', NILAI, ' ' KETERANGAN.
           COMPUTE I = I + 1.
       AKHIR.
            STOP RUN.
       END PROGRAM NILAI1.

