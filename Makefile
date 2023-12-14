CC = gcc
CFLAGS = -c -Wall

all: calculator

calculator: main.o calculator.o
	$(CC) -o calculator main.o calculator.o

main.o: main.c
	$(CC) $(CFLAGS) -o main.o main.c

calculator.o: calculator.c
	$(CC) $(CFLAGS) -o calculator.o calculator.c

clean:
	rm -f calculator main.o calculator.o

