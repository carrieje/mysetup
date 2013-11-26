####
# HEADERS
H_PACKAG = $(shell echo `pkg-config --cflags PACKAG`)    #TODO
ALL_HDRS = $(H_PACKAG)                                   #TODO mettre les $(H_*)

####
#LIBRARIES
L_PACKAG = `pkg-config --libs PACKAG`                    #TODO
ALL_LIBS =                                               #TODO mettre les $(L_*)


####
# COMPILATION
CC      = g++                                            #TODO g++ gcc
CFLAGS  = -W -Wall -ansi -pedantic $(ALL_HDRS)
LDFLAGS = $(ALL_LIBS)

EXEC = a.out                                             #TODO
EXT  = cpp                                               #TODO cpp cc c
SRC  = $(wildcard *.$(EXT))
OBJ  = $(SRC:.$(EXT)=.o)


####
# TARGETS
all: $(EXEC)

iidcTk: $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)
