*>****************************************************************
*> Author:
*> Date:
*> Purpose:
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. YOUR-PROGRAM-NAME.
DATA DIVISION.
01 RECORD-A.
02 A PIC 9(3).
02 B PIC X(5).
02 C PIC A(9).
02 D PIC 9(4).
01 RECORD-B.
02 A PIC 9(3).
02 FILLER PIC X(5).
02 B PIC X(6).
02 D PIC 9(4).
02 E PIC $$$.99.
02 FILLER PIC X(5).
FILE SECTION.
WORKING-STORAGE SECTION.
PROCEDURE DIVISION.
MOVE CORRESPONDING RECORD-A TO RECORD-B.

MAIN-PROCEDURE.
    DISPLAY "Hello world"
    STOP RUN.
END PROGRAM YOUR-PROGRAM-NAME.
