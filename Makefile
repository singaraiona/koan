TARGET=k
CC=clang

all:
	bison -y -d kp.y
	flex kl.l
	$(CC) -c y.tab.c lex.yy.c
	$(CC) y.tab.o lex.yy.o -o $(TARGET)

clean:
	rm -rf $(TARGET) *.o