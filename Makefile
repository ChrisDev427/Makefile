# Makefile

NAME = libft.a
CC = gcc 
CFLAGS = -Wall -Wextra -Werror -I

SRCS = ./ft_isalnum.c ft_isdigit.c ft_memchr.c ft_memmove.c ft_strdup.c ft_strlen.c ft_tolower.c\
		ft_bzero.c ft_isalpha.c ft_isprint.c ft_memcmp.c ft_memset.c ft_strlcat.c ft_strncmp.c ft_toupper.c\
		ft_calloc.c ft_isascii.c ft_memcpy.c ft_strchr.c ft_strlcpy.c\
		ft_strnstr.c ft_strrchr.c ft_itoa.c ft_atoi.c ft_putendl_fd.c ft_putstr_fd.c ft_striteri.c ft_strmapi.c\
		ft_substr.c ft_putchar_fd.c ft_putnbr_fd.c ft_split.c ft_strjoin.c ft_strtrim.c
OBJECT_FILES = $(SRCS:.c=.o)

BONUS = ./ft_lstnew.c ft_lstadd_front.c ft_lstadd_back.c ft_lstsize.c ft_lstlast.c 


BONUS_OBJ = $(BONUS:.c=.o)

HEADER = ./


all: $(NAME) 

.c.o:
	$(CC) $(CFLAGS) $(HEADER) -c  $< -o $(<:.c=.o)

$(NAME): $(OBJECT_FILES)
	ar rsc $(NAME) $(OBJECT_FILES) 

clean:
	rm -rf $(OBJECT_FILES) $(BONUS_OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

bonus:  $(OBJECT_FILES) $(BONUS_OBJ)
	ar rsc $(NAME) $(OBJECT_FILES) $(BONUS_OBJ) 

reb: fclean bonus

	




