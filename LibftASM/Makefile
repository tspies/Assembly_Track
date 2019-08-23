NAME = libfts.a
NAME_TEST = test
PATH_SRC = ./src/
#PATH_OBJ = ./obj/
#PATH_INC = ./libft/includes/


AS = nasm
ASFLAGS = -f macho64
CC = cc -Wall -Wextra -Werror
# CFLAGS = -f macho64
# CFLAGS = -Ofast -I $(PATH_INC) -g

LIBS = -L ./ -lfts

#____________FILES____________#

SRC =	ft_isalpha.s \
		ft_helloworld.s\
		ft_isdigit.s\
		ft_isascii.s

OBJ = $(addprefix $(PATH_SRC), $(SRC:.s=.o))


#____________REGLES____________#

.PHONY: clean fclean re test clean_test

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

test: $(OBJ) main.c
	$(CC) main.c $(LIBS) -o $(NAME_TEST)

clean_test:
	/bin/rm -f $(NAME_TEST)
