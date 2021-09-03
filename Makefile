CC=gcc
NAME=main
SRC=src/main.c src/canvas.c src/yuv.c src/gl.c
CFLAGS=-std=c11 -Wall -Wextra -pedantic
LIBS=-lm
PKGS=glfw3 gl glew x11

$(NAME): $(SRC)
	$(CC) -o $(NAME) $(SRC) $(FLAGS) $(LIBS) `pkg-config --libs $(PKGS)`

run: $(NAME)
	./$(NAME) opengl
