# Unit testing with COBOL

This is a proof of concept to show case unit testing with COBOL. The proof of concept implements the [FizzBuzz kata](http://codingdojo.org/kata/FizzBuzz/) using Test Driven Development.

Unit tests are implemented using [@neopragma](https://github.com/neopragma)'s [cobol-unit-test](https://github.com/neopragma/cobol-unit-test).  

## Pre-requisites
To compile and run the tests and program you need the [GnuCOBOL compiler](https://sourceforge.net/projects/open-cobol/).

For MacOS:
```
$ brew install gnu-cobol
```

## Execute FizzBuzz program
To compile and execute the program:
```
$ make compile
$ ./target/FIZZBUZZ
```

## Run the tests
To run the tests:
```
$ make test
```


