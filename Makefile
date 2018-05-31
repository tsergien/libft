#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tsergien <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/21 11:42:01 by tsergien          #+#    #+#              #
#    Updated: 2018/05/07 12:23:51 by tsergien         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

HEADER = includes/

SRC = 	ft_atoi.c\
		ft_bzero.c\
		ft_isalnum.c\
		ft_isalpha.c\
		ft_isascii.c\
		ft_isdigit.c\
		ft_isprint.c\
		ft_itoa.c\
		ft_lstadd.c\
		ft_lstdel.c\
		ft_lstdelone.c\
		ft_lstiter.c\
		ft_lstmap.c\
		ft_lstnew.c\
		ft_lstpush_back.c\
		ft_lstsize.c\
		ft_memalloc.c\
		ft_memccpy.c\
		ft_memchr.c\
		ft_memcmp.c\
		ft_memcpy.c\
		ft_memdel.c\
		ft_memmove.c\
		ft_memset.c\
		ft_newmatrix.c\
		ft_putchar.c\
		ft_putchar_fd.c\
		ft_putendl.c\
		ft_putendl_fd.c\
		ft_putnbr.c\
		ft_putnbr_fd.c\
		ft_putstr.c\
		ft_putstr_fd.c\
		ft_sqrt.c\
		ft_strcat.c\
		ft_strchr.c\
		ft_strclr.c\
		ft_strcmp.c\
		ft_strcpy.c\
		ft_strdel.c\
		ft_strdup.c\
		ft_strdup_free.c\
		ft_strequ.c\
		ft_striter.c\
		ft_striteri.c\
		ft_strjoin.c\
		ft_strjoin_free.c\
		ft_strjoin_free_one.c\
		ft_strlcat.c\
		ft_strlen.c\
		ft_strmap.c\
		ft_strmapi.c\
		ft_strncat.c\
		ft_strncmp.c\
		ft_strncpy.c\
		ft_strnequ.c\
		ft_strnew.c\
		ft_strnstr.c\
		ft_strrchr.c\
		ft_strsplit.c\
		ft_strstr.c\
		ft_strsub.c\
		ft_strtrim.c\
		ft_swap.c\
		ft_tolower.c\
		ft_toupper.c\
		ft_num_len.c\
		ft_pow.c\
		ft_itoa_base.c\


OBJ = $(SRC:.c=.o)

FLAGC = -Wall -Wextra -Werror

TILDA = *~

all: $(NAME)

$(NAME):
		@gcc $(FLAGS) -c $(SRC) -I $(HEADER)
		@ar rc $(NAME) $(OBJ)
		@echo "lib compiled successfully."

clean:
		@rm -f $(OBJ) $(TILDA)
		@echo "obj removed."

fclean: clean
		@rm -f $(NAME)
		@echo "lib removed."

re: fclean all