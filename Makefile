CC=gcc
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=xcb_box.c
LIBS=xcb
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLES=$(SOURCES:.c=)

# Use pkg-config to supply flags for gcc
CFLAGS += `pkg-config --cflags`
LDFLAGS += `pkg-config --libs $(LIBS)`

all: $(SOURCES) $(EXECUTABLES)

$(EXECUTABLES): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLES) 

