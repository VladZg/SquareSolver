TARGET = main

CC = g++
CFLAGS = -g #-fsanitize=address

SRC_DIR = ./Src/
APP_DIR = ./App/

SRC = 	$(APP_DIR)main.cpp			\
	  	$(SRC_DIR)Solvers.cpp		\
		$(SRC_DIR)Interactors.cpp

all: compile

compile:
	@$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f *.o $(TARGET)
