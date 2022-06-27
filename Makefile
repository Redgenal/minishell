CC	= gcc

SOURCES	= mainfile.c

OBJECTS	= $(SOURCES:%.c=%.o)

HEADER	= minishell.h

NAME = minishell

FLAGS = -Werror -Wextra -Wall -I $(HEADER)

.PHONY	: all clean fclean re

all	: $(NAME)

$(NAME)	: $(HEADER) $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(NAME)

%.o	: %.c $(HEADER)
	$(CC) $(FLAGS) -c $< -o $@

clean	:
	rm -f $(OBJECTS)

fclean	: clean
	rm -f $(NAME)

re	: fclean all