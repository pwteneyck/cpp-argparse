CC=c++
CFLAGS=-std=c++17

lib:
	@echo 'Compiling library sources'
	$(CC) $(CFLAGS) -c argparse.cpp
	@echo 'Building library archive'
	ar rcs libargparse.a argparse.o
	@echo 'Done!'
	@echo 'Statically link using "c++ -std=c++17 {FILENAME} -L . -largparse -o {OUTPUT}"'

main:
	@echo 'Compiling main source'
	$(CC) $(CFLAGS) -c main.cpp
	@echo 'Linking'
	$(CC) $(CFLAGS) main.o -L . -largparse -o main

clean:
	rm -f *.o
	rm -f *.a
	rm -f main