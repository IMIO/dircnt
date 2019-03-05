
build: build/size

prepare:
	mkdir -p build

clang-format:
	clang-format -i *.c

build/size: prepare
	cc -Wall -DFEATURE_SIZE -DPREFER_STAT -pedantic -o build/dircnt dircnt.c

build/base: prepare
	cc -Wall -DPREFER_STAT -pedantic -o build/dircnt dircnt.c

build/debug: prepare
	cc -Wall -DDEBUG -DFEATURE_SIZE -DPREFER_STAT -pedantic -o build/dircnt dircnt.c
