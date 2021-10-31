CC=c++
CFLAGS=-std=c++17
SRC=src
OUT=build

lib:
	@mkdir -p build/
	@echo 'Compiling library sources'
	$(CC) $(CFLAGS) -c $(SRC)/argparse.cc -o $(OUT)/argparse.o
	@echo 'Building library archive'
	ar rcs $(OUT)/libargparse.a $(OUT)/argparse.o
	@echo 'Done!'
	@echo 'Statically link using "c++ -std=c++17 {FILENAME} -L . -largparse -o {OUTPUT}"'

main:
	@echo 'Compiling main source'
	$(CC) $(CFLAGS) -I $(SRC)/ -c main.cc -o $(OUT)/main.o
	@echo 'Linking'
	$(CC) $(CFLAGS) $(OUT)/main.o -L $(OUT) -largparse -o main

clean:
	rm -rf $(OUT)
	rm -f main