all: main

clean:
	-rm main.o game.o othello.o main.exe

main: main.o game.o othello.o
	g++ -g -o main main.o game.o othello.o

main.o: main.cc game.h othello.h
	g++ -g -o main.cc

game.o: game.cc game.h
	g++ -g -o game.cc

othello.o: othello.cc othello.h
	g++ -g -o othello.cc
