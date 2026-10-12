       IDENTIFICATION DIVISION. 
       PROGRAM-ID. SCHOLARSHIP.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 GRADE    PIC 99V99.
       01 MONTHLY  PIC 9(5).

       PROCEDURE DIVISION.

           DISPLAY "Input grade: " WITH NO ADVANCING
           ACCEPT GRADE.

           DISPLAY "Input Family Monthly income: " WITH NO ADVANCING.
           ACCEPT MONTHLY. 

           IF GRADE >= 90 AND MONTHLY <= 25000
              DISPLAY "PASSED"
           ELSE 
              DISPLAY "FAILED"

           END-IF.

           STOP RUN.