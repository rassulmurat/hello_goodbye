CC = gcc

default: main
main: main.o hello.o goodbye.o
	$(CC) -o main main.o hello.o goodbye.o
main.o: main.c
	$(CC) -c main.c
hello.o: hello.c
	$(CC) -c hello.c
goodbye.o: goodbye.c
	$(CC) -c goodbye.c
