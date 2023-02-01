NAME =

CC = gcc
CFLAGS = -Wall -Werror -Wextra
AR = ar rcs
RM = rm -rf

SRCS = 

OBJS_DIR = obj
OBJS = $(SRCS:%.c=$(OBJ_DIR)/%.o)

LIBFT_PATH = ./libft
LIBFT = $(LIBFT_PATH)/libft.a

$(OBJ_DIR)/%.o:		%.c
				$(CC) $(CFLAGS) -c $< -o $@

all:	$(NAME)

$(NAME):	$(LIBFT) $(OBJ_DIR) $(OBJS)
			cp	$(LIBFT) $(NAME)
				$(AR) $(NAME) $(OBJS)

$(LIBFT):		make -C $(LIBFT_PATH all)

$(OBJ_DIR):		mkdir -p $(OBJ_DIR)

clean:			make -C $(LIBFT_PATH) clean
				$(RM) $(OBJ_DIR)

fclean:		clean
				make -C $(LIBFT_PATH) fclean
				$(RM) $(NAME)

re:				fclean all

.PHONY:		all clean fclean re