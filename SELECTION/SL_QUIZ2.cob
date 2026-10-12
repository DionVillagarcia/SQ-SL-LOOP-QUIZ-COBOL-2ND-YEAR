       IDENTIFICATION DIVISION.
       PROGRAM-ID. WEIGHT.

       DATA DIVISION. 
       WORKING-STORAGE SECTION.

       01 WEIGHT      PIC 99V99.
       01 PRICE       PIC 999.

       01 DISP-PRICE  PIC ZZ9.

       PROCEDURE DIVISION.

           DISPLAY "Input Weight: " WITH NO ADVANCING
           ACCEPT WEIGHT.

           IF WEIGHT <= 1
              MOVE 80 TO PRICE 
           ELSE
              IF WEIGHT > 1 AND WEIGHT <= 3
                 MOVE 120 TO PRICE
              ELSE
                 IF WEIGHT > 3 AND WEIGHT <= 5
                    MOVE 180 TO PRICE
                 ELSE 
                    IF WEIGHT > 5 
                       MOVE 250 TO PRICE
                    ELSE
                       DISPLAY "INVALID"
                    END-IF
                 END-IF
              END-IF
           END-IF.
              
           MOVE PRICE TO DISP-PRICE   
           DISPLAY "PRICE: " FUNCTION TRIM(DISP-PRICE).

           STOP RUN.