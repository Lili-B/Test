##
## EPITECH PROJECT, 2018
## My_Makefile
## File description:
## Makefile
##

SRC	=	src/main.c

OBJ	=	$(SRC:.c=.o)

NAME	=	nm

CFLAGS	=	-W -Wall -Wextra

all:	$(NAME)

$(NAME):
	gcc -o $(NAME) $(CFLAGS) $(SRC)

clean:
	rm -f $(OBJ)
	touch test.gcno
	rm *.gc*

fclean:	clean
	rm -f $(NAME)
	rm -f include/my.h.gch

re: fclean all

.PHONY: all clean fclean re

