           TESTSUITE 'FizzBuzz Kata'

           TESTCASE 'it returns 1 when input is 1'
           MOVE 1 TO LS-INPUT
           PERFORM 1000-FIZZBUZZ
           EXPECT LS-RESULT TO BE '1'           
