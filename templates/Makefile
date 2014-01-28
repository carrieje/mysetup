# MAKY -- v2.1
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

EXEC = a.out
EXT  = $(EXTENSION)
SRC  = $(wildcard *.$(EXT))
OBJ  = $(SRC:.$(EXT)=.o)


####
# TARGETS
all: _pkg_availability $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.$(EXT)
	$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper list _pkg_availability testpkg

clean:
	rm -rf $(OBJ)

mrproper: clean
	rm -rf $(EXEC)

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
