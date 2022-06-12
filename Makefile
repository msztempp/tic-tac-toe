__start__: program
	./program

program: main.o TicTacToe.o
	g++ -o program main.o TicTacToe.o

main.o: main.cpp TicTacToe.hh
	g++ -c -o main.o main.cpp

TicTacToe.o: TicTacToe.cpp TicTacToe.hh
	g++ -c -o TicTacToe.o TicTacToe.cpp

clean:
	rm -f *.o program
# FLAGS=-g -Wall -pedantic -std=c++11

# __start__: ./TicTacToe

# ./TicTacToe:obj obj/main.o obj/TicTacToe.o 
# 	g++ -Wall -pedantic -std=c++11 -o ./TicTacToe obj/main.o obj/TicTacToe.o 
# obj:
# 	mkdir -p obj

# obj/main.o: src/main.cpp inc/TicTacToe.hh 
# 	g++ -c ${FLAGS} -o obj/main.o src/main.cpp

# obj/TicTacToe.o: inc/TicTacToe.hh src/TicTacToe.cpp 
# 	g++ -c ${FLAGS} -o obj/TicTacToe.o src/TicTacToe.cpp

# clean:
# 	rm -f *.o TicTacToe
