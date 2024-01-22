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
NAMEBONUS = server_bonus client_bonus
SERVERNBONUS = server_bonus
CLIENTNBONUS = client_bonus
SERVERSRCBONUS = srcserverbonus/main.c 
CLIENTSRCBONUS = srcclientbonus/main.c
SERVEROBJBONUS = $(SERVERSRCBONUS:.c=.o)
CLIENTOBJBONUS = $(CLIENTSRCBONUS:.c=.o)
# :#
all: $(NAME)

$(NAME) :  $(SERVEROBJ) $(CLIENTOBJ) $(LIBFT) $(PRINTF)
	$(CC) $(FLAGS) $(SERVERSRC) -o $(SERVERN) $(LIBFT) $(PRINTF)
	$(CC) $(FLAGS) $(CLIENTSRC) -o $(CLIENTN) $(LIBFT) $(PRINTF)

$(LIBFT):
	make -C include/libft

$(PRINTF):
	make -C include/ft_printf

bonus: $(NAMEBONUS)

$(NAMEBONUS): $(SERVEROBJBONUS) $(CLIENTOBJBONUS) $(LIBFT) $(PRINTF)
	$(CC) $(FLAGS) $(SERVERSRCBONUS) -o $(SERVERNBONUS) $(LIBFT) $(PRINTF)
	$(CC) $(FLAGS) $(CLIENTOBJBONUS) -o $(CLIENTNBONUS) $(LIBFT) $(PRINTF)

clean: 
	$(RM) $(SERVEROBJ) $(CLIENTOBJ) $(CLIENTOBJBONUS) $(SERVEROBJBONUS)
	make -C include/ft_printf clean
	make -C include/libft clean

fclean:
	$(RM) $(SERVERN) $(CLIENTN) $(CLIENTNBONUS) $(SERVERNBONUS)
	make -C include/ft_printf fclean
	make -C include/libft fclean

re: fclean all
