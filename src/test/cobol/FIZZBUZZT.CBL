           TESTSUITE 'FizzBuzz Kata'

           TESTCASE 'it returns 1 when input is 1'
           MOVE 1 TO LS-INPUT
           PERFORM 1000-FIZZBUZZ
           EXPECT LS-RESULT TO BE '01'           

           TESTCASE 'it returns 2 when input is 2'
           MOVE 2 TO LS-INPUT
           PERFORM 1000-FIZZBUZZ
           EXPECT LS-RESULT TO BE '02'

           TESTCASE 'it returns Fizz when input is 3'
           MOVE 3 TO LS-INPUT
           PERFORM 1000-FIZZBUZZ
           EXPECT LS-RESULT TO BE 'Fizz'


