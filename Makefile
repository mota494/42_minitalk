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

all: $(NAME)

$(NAME) :  $(SERVEROBJ) $(CLIENTOBJ) $(LIBFT) $(PRINTF)
	$(CC) $(SERVERSRC) -o $(SERVER) $(LIBFT) $(PRINTF)
	$(CC) $(CLIENTSRC) -o $(CLIENT) $(LIBFT) $(PRINTF)

$(LIBFT):
	make -C include/libft

$(PRINTF):
	make -C include/ft_printf
	
fclean:
	$(RM) $(SERVEROBJ) $(CLIENTOBJ) $(SERVER) $(CLIENT)
	make -C include/ft_printf fclean
	make -C include/libft fclean