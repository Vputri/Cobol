      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM1.
       AUTHOR. VS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 Y PIC 99.
       PROCEDURE DIVISION.
       MULAI.
            PERFORM TAMPILKAN VARYING Y
               FROM 1 BY 1 UNTIL Y > 10.
            STOP RUN.
           TAMPILKAN.
            DISPLAY Y.
       END PROGRAM PERFORM1.
