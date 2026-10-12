       IDENTIFICATION DIVISION.
       PROGRAM-ID. SQ_QUIZ.
       AUTHOR. DION VILLAGARCIA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 EMPLOYEE-NUMBER  PIC 9(11).
       01 EMPLOYEE-NAME    PIC A(20).
       01 HOURS-WORKED     PIC 9(5)V9.
       01 HOURS-PAY        PIC 9(5)V99.
       01 TAX-RATE         PIC 9(5)V99.

       01 GROSS-PAY        PIC 9(5)V99.
       01 TAX-DEDUC        PIC 9(5)V99.
       01 NETPAY           PIC 9(5)V99.

       01 DISP-GP          PIC Z,ZZ9.99.
       01 DISP-TD          PIC Z,ZZ9.99.
       01 DISP-NP          PIC Z,ZZ9.99.

       PROCEDURE DIVISION.

       MAIN-PROGRAM.
           DISPLAY "Input Emlpoyee Number: " WITH NO ADVANCING
           ACCEPT EMPLOYEE-NUMBER.

           DISPLAY "Input Emlpoyee Name: " WITH NO ADVANCING
           ACCEPT EMPLOYEE-NAME.

           DISPLAY "Input Hourly Worked: " WITH NO ADVANCING
           ACCEPT HOURS-WORKED.

           DISPLAY "Input Hourly Pay: " WITH NO ADVANCING
           ACCEPT HOURS-PAY.

           DISPLAY "Input Tax Rate: " WITH NO ADVANCING
           ACCEPT TAX-RATE.

           COMPUTE GROSS-PAY = HOURS-WORKED * HOURS-PAY.
           COMPUTE TAX-DEDUC = GROSS-PAY *(TAX-RATE / 100).
           COMPUTE NETPAY = GROSS-PAY - TAX-DEDUC.

           MOVE GROSS-PAY TO DISP-GP.
           MOVE TAX-DEDUC TO DISP-TD.
           MOVE NETPAY TO DISP-NP.

           DISPLAY "The employee gross pay is: " FUNCTION TRIM(DISP-GP).
           DISPLAY "The employee tax deduction is: "
                   FUNCTION TRIM(DISP-TD).
           DISPLAY "The employee netpay is: "
                   FUNCTION TRIM(DISP-NP).

           STOP RUN.