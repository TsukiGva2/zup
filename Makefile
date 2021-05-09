ZU=zimbu
CC=gcc

all:
	$(CC) -o zup build/zup.c
	-mkdir bin/
	mv zup bin/

# compiling with zimbu, this only works if you have zimbu in your $PATH
zu:
	$(ZU) zup.zu
	-cp ZUDIR/*.c build/
	-mkdir bin/	
	mv zup bin/