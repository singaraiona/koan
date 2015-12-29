TARGET=k
CC=clang
CFLAGS=

all:
	bison -y -d kp.y
	flex kl.l
	$(CC) $(CFLAGS) -c y.tab.c lex.yy.c
	$(CC) $(CFLAGS) y.tab.o lex.yy.o -o $(TARGET)

clean:
	rm -rf $(TARGET) *.o