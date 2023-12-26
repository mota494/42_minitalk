NAME = minitalk
SERVER = server
CLIENT = client
# :3
CC = cc
FLAGS =  -Wall -Wextra -Werror
LIBFT = include/libft/libft.a
PRINTF = include/ft_printf/libftprintf.a
RM = rm -rf
# >:3
SERVERSRC =
CLIENTSRC =
SERVEROBJ = $(SERVERSRC:.c=.o)
CLIENTOBJ = $(CLIENTSRC:.c=.o)