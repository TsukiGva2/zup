# example makefile, it's not a good one though
ZU=zimbu
CC=gcc
#CC=clang
ENDCFLAGS=-llua -lm -ldl -L./lua/ -I./lua/
CFLAGS=
ZUFLAGS=--ccendarg "-llua -lm -ldl -L./lua/ -I./lua/"

all:
	mkdir -p target/bin/
	cp src/lua_scripts/*.lua .
	$(ZU) $(ZUFLAGS) src/main.zu -o target/bin/zup
	cp src/ZUDIR/main.c target/c/

c:
	mkdir -p target/bin/
	$(CC) $(CFLAGS) target/c/main.c -o target/bin/zup $(ENDCFLAGS)

