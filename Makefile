
PROJECT=$(CURDIR)
MAINSRC=$(PROJECT)/src/main/cobol
TESTSRC=$(PROJECT)/src/test/cobol
MAINCPY=$(MAINSRC)
TESTCPY=$(TESTSRC)
MAINRSC=$(PROJECT)/src/main/resources
TESTRSC=$(PROJECT)/src/test/resources
TARGET=$(PROJECT)/target
export COBCPY=$(MAINCPY):$(TESTCPY)
export COB_LIBRARY_PATH=$(TARGET)

TESTNAME=TESTPRG
TESTPRG=$(TARGET)/$(TESTNAME).CBL

PROGRAM=FIZZBUZZ
CONFIG=FIZZBUZZC
UNITTESTS=FIZZBUZZT

export SRCPRG=$(MAINSRC)/$(PROGRAM).CBL
export TESTPRG=$(TARGET)/TESTPRG.CBL
export TESTNAME=TESTPRG
export UTSTCFG=$(TESTRSC)/$(CONFIG)
export UTESTS=$(TESTCPY)/$(UNITTESTS).CBL

all: clean test

clean:
	rm -rf $(TARGET)

$(TARGET):
	mkdir $(TARGET)

$(TARGET)/ZUTZCPC: $(TESTSRC)/ZUTZCPC.CBL
	cobc -x -std=ibm -o $(TARGET)/ZUTZCPC $(TESTSRC)/ZUTZCPC.CBL

test: $(TARGET) $(TARGET)/ZUTZCPC
	$(TARGET)/ZUTZCPC
	cobc -x -std=ibm -o $(TARGET)/$(UNITTESTS) $(TESTPRG)
	$(TARGET)/$(UNITTESTS)

$(TARGET)/$(PROGRAM): $(MAINSRC)/$(PROGRAM).CBL
	cobc -x -std=ibm -o $(TARGET)/$(PROGRAM) $(MAINSRC)/$(PROGRAM).CBL

compile: $(TARGET) $(TARGET)/$(PROGRAM)
