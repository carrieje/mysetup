# MAKY -- v2.3
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
CFLAGS  = -W -Wall -pedantic $(ALL_HDRS)
LDFLAGS = $(ALL_LIBS)

MAINS = main.$(EXT)
EXT  = $(EXTENSION)
ALLSRC  = $(wildcard *.$(EXT))
SRC  = $(filter-out $(MAINS),$(ALLSRC))
OBJ  = $(SRC:.$(EXT)=.o)


####
# TARGETS
all: _pkg_availability $(MAINS:.$(EXT)=)

.SECONDEXPANSION:

$(MAINS:.$(EXT)=): $(OBJ) $$(@).o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.$(EXT)
	$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper list _pkg_availability testpkg

clean:
	rm -rf $(OBJ) $(MAINS:.$(EXT)=.o)

mrproper: clean
	rm -rf $(MAINS:.$(EXT)=)

list:
	@echo -e "Sources $(SRC)\nObjets  $(OBJ)"

testpkg:
	@for p in $(PACKAGES); do \
		echo -n "$$p : "; \
		pkg-config --modversion $$p; \
	done

_pkg_availability:
	@for p in $(PACKAGES); do \
		pkg-config --exists $$p; \
		if [ $$? -ne 0 ]; then \
			echo -en "\033[31m" > /dev/stderr; \
			echo -en "The package $$p does not exist" > /dev/stderr; \
			echo -e  "\033[0m" > /dev/stderr; \
		fi; \
	done
