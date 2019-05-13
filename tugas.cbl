       IDENTIFICATION DIVISION.
       PROGRAM-ID. NILAI1.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 N PIC 9.
       77 I PIC 9 VALUE 1.
       01 DATA-TABEL.
           02 DATA-MHS OCCURS 42 TIMES.
               03 NPM PIC X(8).
               03 NAMA PIC X(20).
               03 NILAI PIC X(3).
               03 KETERANGAN PIC X(5).
       01 JUDUL PIC X(30) VALUE '      TABEL NILAI MAHASISWA'.
       01 JUDUL-TABEL.
           02 FILLER PIC X(2) VALUE '| '.
           02 FILLER PIC X(13) VALUE '  NPM     '.
           02 FILLER PIC X(2) VALUE '| '.
           02 FILLER PIC X(26) VALUE '  NAMA           '.
           02 FILLER PIC X(2) VALUE '| '.
           02 FILLER PIC X(9) VALUE '  NILAI  '.
           02 FILLER PIC X(2) VALUE '| '.
           02 FILLER PIC X(14) VALUE '  KETERANGAN  '.
           02 FILLER PIC X(2) VALUE '| '.
       01 ISI-TABEL.
           02 FILLER PIC X(2) VALUE '| '.
           02 DATA-NPM PIC X(13).
           02 FILLER PIC X(2) VALUE '| '.
           02 DATA-NAMA PIC X(26).
           02 FILLER PIC X(2) VALUE '| '.
           02 DATA-NILAI PIC X(9).
           02 FILLER PIC X(2) VALUE '| '.
           02 DATA-KETERANGAN PIC X(14).
           02 FILLER PIC X(2) VALUE '| '.
       SCREEN SECTION.
       PROCEDURE DIVISION.
       AWAL.
           DISPLAY "JUMLAH DATA : ".
           ACCEPT N.
           DISPLAY SPACES.
           PERFORM ISI N TIMES.
           PERFORM TAMPIL.
           STOP RUN.
       ISI.
           DISPLAY "NPM : ".
           ACCEPT NPM(N).
           DISPLAY "NAMA : ".
           ACCEPT NAMA(N).
           DISPLAY "NILAI : ".
           ACCEPT NILAI(N).
           IF NILAI(N)>70
               DISPLAY "KETERANGAN : LULUS".
               MOVE 'LULUS' TO KETERANGAN(N).
           IF NILAI(N)<= 70 THEN
               DISPLAY "KETERANGAN : GAGAL".
               MOVE 'GAGAL' TO KETERANGAN(N).
           DISPLAY SPACES.
       KE-TABEL.
         MOVE NPM(N) TO DATA-NPM.
         MOVE NAMA(N) TO DATA-NAMA.
         MOVE NILAI(N) TO DATA-NILAI.
         MOVE KETERANGAN(N) TO DATA-KETERANGAN.
         DISPLAY ISI-TABEL.
       TAMPIL.
          DISPLAY SPACES.
          DISPLAY JUDUL.
          DISPLAY SPACES
          DISPLAY JUDUL-TABEL.
          PERFORM KE-TABEL N TIMES .
       END PROGRAM NILAI1.
