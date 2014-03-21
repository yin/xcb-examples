CC=gcc
CFLAGS=-c -Wall
LDFLAGS=-lxcb
SOURCES=xcb_box.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=$(SOURCES:.c=)

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLES) 

