####
# CUSTOMIZATION
EXTENSION = cpp
PACKAGES  =
COMPILER  = g++
EXTRAINCL =
EXTRALIBS =


####
# COMPILATION
ALL_HDRS = $(foreach pack, $(PACKAGES), $(shell echo `pkg-config --cflags $(pack)`)) $(EXTRAINCL)
ALL_LIBS = $(foreach pack, $(PACKAGES), `pkg-config --libs $(pack)`) $(EXTRALIBS)

CC      = $(COMPILER)
CFLAGS  = -W -Wall -std=c99 -pedantic $(ALL_HDRS)
LDFLAGS = $(ALL_LIBS)

EXEC = a.out
EXT  = $(EXTENSION)
SRC  = $(wildcard *.$(EXT))
OBJ  = $(SRC:.$(EXT)=.o)


####
# TARGETS
all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.$(EXT)
	$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper list

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)

list:
	@echo -e "Sources $(SRC)\nObjets  $(OBJ)"
