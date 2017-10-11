      * FizzBuzz program
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZBUZZ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  LS-INPUT               PIC 9(4).
       01  LS-RESULT              PIC 9(4).

       PROCEDURE DIVISION.

       0000-MAIN.
           PERFORM 1000-FIZZBUZZ. 
       
       1000-FIZZBUZZ.
