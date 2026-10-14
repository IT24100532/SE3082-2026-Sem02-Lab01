# Build on Linux (AWS EC2 or Docker): make
CC = gcc
CFLAGS = -Wall -O2

all: bin/exercise02 bin/hello

bin/exercise02: Exercise02/exercise02.c | bin
	$(CC) $(CFLAGS) $< -o $@

bin/hello: Exercise03/hello.c | bin
	$(CC) $(CFLAGS) -fopenmp $< -o $@

bin:
	mkdir -p bin

clean:
	rm -rf bin
