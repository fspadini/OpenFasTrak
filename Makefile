CC=gcc
CFLAGS=-O2

SOURCES=realtime/rle.c realtime/crc.c realtime/debounce.c realtime/expand.c realtime/map.c realtime/unpack.c realtime/pack.c realtime/binnum.c realtime/manchester.c realtime/triples.c
BINARIES=$(SOURCES:.c=)

all: $(BINARIES)

$(BINARIES): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $@.c

clean:
	rm $(BINARIES)
