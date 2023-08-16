NAME	= libftprintf.a
CC = gcc
INC = ft_printf.h
CFLAGS = -Wall -Wextra -Werror

SRCS	= ft_control.c ft_specifier.c ft_printf.c ft_putchar.c \
			ft_putnbr.c ft_putpointer.c ft_putstr.c ft_putuns.c \
			ft_putuphex.c ft_puthex.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	@ar -rcs $(NAME) $(OBJS)

%.o: %.c $(INC)
	@$(CC) -c $< -o $@ $(CFLAGS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re