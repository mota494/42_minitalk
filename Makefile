NAME = server client
SERVERN = server
CLIENTN = client
# :3
CC = cc
FLAGS =  -Wall -Wextra -Werror
LIBFT = include/libft/libft.a
PRINTF = include/ft_printf/libftprintf.a
RM = rm -rf
# >:3
SERVERSRC = srcserver/main.c
CLIENTSRC = srcclient/main.c
SERVEROBJ = $(SERVERSRC:.c=.o)
CLIENTOBJ = $(CLIENTSRC:.c=.o)
# <:3
all: $(NAME)

$(NAME) :  $(SERVEROBJ) $(CLIENTOBJ) $(LIBFT) $(PRINTF)
	$(CC) $(FLAGS) $(SERVERSRC) -o $(SERVERN) $(LIBFT) $(PRINTF)
	$(CC) $(FLAGS) $(CLIENTSRC) -o $(CLIENTN) $(LIBFT) $(PRINTF)

$(LIBFT):
	make -C include/libft

$(PRINTF):
	make -C include/ft_printf

fclean:
	$(RM) $(SERVEROBJ) $(CLIENTOBJ) $(SERVERN) $(CLIENTN)
	make -C include/ft_printf fclean
	make -C include/libft fclean
