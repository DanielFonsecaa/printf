NAME = libftprintf.a

SRC_PATH = src
INC_PATH = include
BUILD_PATH = .build

SRC = $(addprefix $(SRC_PATH)/, $(FILES))
OBJS = $(SRC:$(SRC_PATH)/%.c=$(BUILD_PATH)/%.o)
LIBFT_PATH = libft
LIBFT = $(LIBFT_PATH)/libft.a

FILES = ft_printf.c
#FILES +=

CC = cc

CFLAGS = -Wall -Werror -Wextra
CFLAGS += -g
INC += -I $(INC_PATH)

RM = rm -rf
AR = ar rcs
MKDIR = mkdir -p


all: $(LIBFT) $(BUILD_PATH) $(NAME)

$(LIBFT): 
	make -C $(LIBFT_PATH)
	make bonus -C $(LIBFT_PATH)

$(NAME) : $(OBJS)
	$(AR) $(NAME) $(OBJS)

$(BUILD_PATH):
	@echo "Creating $(BUILD_PATH)"
	$(MKDIR) $(BUILD_PATH)

$(BUILD_PATH)/%.o: $(SRC_PATH)/%.c
	@echo "making objs"
	$(CC) $(CFLAGS) $(INC) -c $< -o $@

clean:
	$(RM) $(BUILD_PATH)
	make clean -C $(LIBFT_PATH)

fclean: clean
	$(RM) $(NAME)
	make fclean -C $(LIBFT_PATH)

re: fclean all

.PHONY: all clean fclean re bonus
