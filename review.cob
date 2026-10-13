       IDENTIFICATION DIVISION.
       PROGRAM-ID. REVIEW.
       AUTHOR. DION VILLAGARCIA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 NUM       PIC 9(5).
       01 WS-NUM    PIC 9(5).
       01 COUNTER   PIC 9 VALUE 0.
       
       01 DIGIT     PIC 9.
       01 SUM1      PIC 999 VALUE 0.

       01 REVERSE1   PIC 9(5).
      

       PROCEDURE DIVISION.

       MAIN-PROGRAM. 
           DISPLAY "Input a number: " WITH NO ADVANCING
           ACCEPT NUM.

           MOVE NUM TO WS-NUM.
           PERFORM DIGIT-COUNT.

           MOVE NUM TO WS-NUM.
           PERFORM DIGIT-SUM.

           MOVE NUM TO WS-NUM.
           PERFORM REVERSE-NUM.
           
           DISPLAY "The numbers of digits is: " COUNTER.
           DISPLAY "The sum of digits is: " SUM1.
           DISPLAY "Reverse numbers: " REVERSE1.

           STOP RUN.

           DIGIT-SUM.
              PERFORM UNTIL WS-NUM = 0
                 COMPUTE DIGIT = FUNCTION MOD(WS-NUM, 10)
                 COMPUTE SUM1 = SUM1 + DIGIT
                 COMPUTE WS-NUM = WS-NUM / 10
              END-PERFORM.


           DIGIT-COUNT.
              PERFORM UNTIL WS-NUM = 0
                 COMPUTE WS-NUM = WS-NUM / 10
                 ADD 1 TO COUNTER
              END-PERFORM.

           REVERSE-NUM.
              PERFORM UNTIL WS-NUM = 0
                 COMPUTE DIGIT = FUNCTION MOD(WS-NUM, 10)
                 COMPUTE REVERSE1 = (REVERSE1 * 10) + DIGIT
                 COMPUTE WS-NUM = WS-NUM / 10
              END-PERFORM.


