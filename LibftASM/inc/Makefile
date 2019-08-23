NAME = libfts.a

NASM = nasm
NASM_FLAGS = -f macho64

SRC =	ft_helloworld.s ft_isalpha.s

SRC_DIR = ./src/
OBJ_DIR = .obj

CC = cc
MAIN = main.c
FLAGS = -Wall -Werror -Wextra
LIB_FLAGS = -L. -lfts # using the '-L' to look for library in current director (../../ filepath could be added to this)
					# using the '-l' flag which take the name if the library with no 'lib' prefix and no extention like '.a'

NASM_OBJ = $(addprefix $(SRC_DIR), $(SRC:.s=.o))

all: $(NAME)

$(NAME): $(NASM_OBJ)
	@ar rc $(NAME) $(NASM_OBJ)
	@echo [$(YELLOW)MAKE$(BLANK)] Compiling Archive
	@ranlib $(NAME)
	@echo [$(YELLOW)MAKE$(BLANK)] Ranlib on Archive
	@echo [$(GREEN)DONE$(BLANK)]

#--- Testing ---
TEST = test_lib

test: $(NASM_OBJ) main.c
	$(CC) main.c $(LIBS) -o $(NAME_TEST)


#--- Cleaning Functions ---
clean:
	@rm -rf $(OBJ_DIR)
	@echo [$(RED)FCLEAN$(BLANK)] Removing Objects
	@echo [$(GREEN)DONE$(BLANK)]

fclean: clean
	@rm -rf $(NAME)
	@echo [$(RED)FCLEAN$(BLANK)] Removing Archive
	@echo [$(GREEN)DONE$(BLANK)]

re: fclean all

.PHONY: all clean fclean re

RED = '\033[0;31m'
BLUE = '\033[0;34m'
GREEN = '\033[0;32m'
YELLOW = '\033[1;33m'
BLANK = '\033[0m'
