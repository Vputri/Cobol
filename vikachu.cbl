      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. UBAH-TITIK.
       ENVIRONMENT DIVISION.
       SPECIAL-NAMES
           DECIMAL POINT IS COMMA.
       DATA DIVISION
       WORKING-STORAGE SECTION
       01 HARGA
           02 HARG-BAJU PIC 9999 99
       PROCEDURE DIVISON
       MULAI
           DISPLAY 'MASUKKAN HARGA BAJU?'
           ACCEPT HARGA-BAJU
           DISPLAY 'ANDA MEMBAYAR ,' HARGA HARG-BAJU
       SELESAI
           STOP RUN
