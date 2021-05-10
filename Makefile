ZU=zimbu
CC=gcc
MKDIR_P=mkdir -p

all:
	${MKDIR_P} bin/
	$(CC) -o bin/zup build/zup.c

# compiling with zimbu, this only works if you have zimbu in your $PATH
zu:
	${MKDIR_P} bin/
	$(ZU) zup.zu -o bin/zup
	-cp ZUDIR/*.c build/
