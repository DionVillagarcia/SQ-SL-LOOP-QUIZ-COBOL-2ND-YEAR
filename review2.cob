       IDENTIFICATION DIVISION.
       PROGRAM-ID. REVIEW.
       AUTHOR. DION VILLAGARCIA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 NUM       PIC 9(5).
       01 DIGIT     PIC 9.
       01 REVERSE1   PIC 9(5).
       01 WS-NUM    PIC 9(5).

       01 DISP-REVERSE PIC ZZZZ9.

       PROCEDURE DIVISION.

       MAIN-PROGRAM.
           DISPLAY "Input a number: " WITH NO ADVANCING
           ACCEPT NUM

           MOVE NUM TO WS-NUM
           MOVE 0 TO REVERSE1
          
           PERFORM UNTIL NUM = 0
                 COMPUTE DIGIT = FUNCTION MOD(NUM, 10)
                 COMPUTE REVERSE1 = (REVERSE1 * 10) + DIGIT
                 COMPUTE NUM = NUM / 10
           END-PERFORM
           
           MOVE REVERSE1 TO DISP-REVERSE
           DISPLAY "Reverse: " FUNCTION TRIM(DISP-REVERSE).

           IF WS-NUM = REVERSE1
              DISPLAY "PALINDROME"
           ELSE 
              DISPLAY "NOT A PALINDROME"
           END-IF.

           STOP RUN.

           

           

           
