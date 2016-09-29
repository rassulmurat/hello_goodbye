CC = gcc

default: dinamic static main.o
	$(CC) -o main *.o -L. lib_dinamic.so -Wl,-rpath,.
main.o: 
	$(CC) -c main.c
hello.o: 
	$(CC) -c -fPIC hello.c
goodbye.o: 
	$(CC) -c goodbye.c
static: goodbye.o
	ar r lib_static.a goodbye.o
dinamic: hello.o
	$(CC) -shared -o lib_dinamic.so hello.o
clean:	
	rm -f *.o *.so main
