# makefile for hello
CC=gcc
CFLAGS=-c -Wall

all: hello

hello: main.o factorial.o hello.o
	$(CC) main.o factorial.o hello.o -o hello

main.o: main.c functions.h
	$(CC) $(CFLAGS) main.c

factorial.o: factorial.c functions.h
	$(CC) $(CFLAGS) factorial.c

hello.o: hello.c functions.h
	$(CC) $(CFLAGS) -c hello.c

clean:
	rm *.o hello
