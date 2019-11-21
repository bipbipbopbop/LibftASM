# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jhache <jhache@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/18 14:42:51 by jhache            #+#    #+#              #
#    Updated: 2019/11/21 11:24:42 by jhache           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIB_NAME := fts
NAME := lib$(LIB_NAME).a


# Basic definitions
SRC_PATH := source
OBJ_PATH := .bin


# Compiler
CC := nasm
CCFLAGS := -f elf64


# Commands
AR := ar rc
RM := rm -f
RMDIR := rm -Rdf
MKDIR := mkdir -p


# Sources files
SRC_NAME :=	ft_bzero.s \
			ft_cat.s \
			ft_isalnum.s \
			ft_isalpha.s \
			ft_isascii.s \
			ft_isdigit.s \
			ft_isprint.s \
			ft_memcpy.s \
			ft_memset.s \
			ft_puts.s \
			ft_strcat.s \
			ft_strdup.s \
			ft_strlen.s \
			ft_tolower.s \
			ft_toupper.s


SRC := $(addprefix $(SRC_PATH)/, $(SRC))
OBJ := $(addprefix $(OBJ_PATH)/, $(SRC_NAME:.s=.o))

OBJ_DIRS := $(sort $(dir $(OBJ)))

# Rules
all: $(NAME)

$(NAME): $(OBJ_DIRS) $(OBJ)
	$(AR) $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ_DIRS):
	@$(MKDIR) $@

$(OBJ_PATH)/%.o: $(addprefix $(SRC_PATH)/, %.s)
	$(CC) $(CCFLAGS) $< -o $@


clean:
	$(RM) $(OBJ)
	$(RMDIR) $(OBJ_DIRS)

fclean: clean
	$(RM) $(NAME)

re: fclean all


.PHONY: all clean fclean re