
export PROJECT=$(CURDIR)
export MAINSRC=$(PROJECT)/src/main/cobol
export TESTSRC=$(PROJECT)/src/test/cobol
export MAINCPY=$(MAINSRC)
export TESTCPY=$(TESTSRC)
export MAINRSC=$(PROJECT)/src/main/resources
export TESTRSC=$(PROJECT)/src/test/resources
export TARGET=$(PROJECT)/target
export COBCPY=$(MAINCPY):$(TESTCPY)
export COB_LIBRARY_PATH=$(TARGET)

$(info PROJECT $(PROJECT) )

PROGRAM=FIZZBUZZ
CONFIG=FIZZBUZZC
UNITTESTS=FIZZBUZZT

export SRCPRG=$(MAINSRC)/$(PROGRAM).CBL
export TESTPRG=$(TARGET)/TESTPRG.CBL
export TESTNAME=TESTPRG
export UTSTCFG=$(TESTRSC)/$(CONFIG)
export UTESTS=$(TESTCPY)/$(UNITTESTS).CBL

$(info SRCPRG=$(SRCPRG) )
$(info TESTPRG=$(TESTPRG) )
$(info TESTNAME=$(TESTNAME) )
$(info UTSTCFG=$(UTSTCFG) )
$(info UTESTS=$(UTESTS) )
$(info COBCPY=$(COBCPY) )
$(info COB_LIBRARY_PATH=$(COB_LIBRARY_PATH) )

test:
	cobc -x -o $(TARGET)/ZUTZCPC $(TESTSRC)/ZUTZCPC.CBL
	$(TARGET)/ZUTZCPC
	cobc -x -o $(TARGET)/$(TESTNAME) $(TESTPRG)
	$(TARGET)/$(TESTNAME)