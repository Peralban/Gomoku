##
## EPITECH PROJECT, 2024
## Gomoku
## File description:
## Makefile of the project
##

NAME = pbrain-gomoku-ai

all: $(NAME)

$(NAME):
	cp src/main.py $(NAME)
	chmod 775 $(NAME)

clean:
	rm -rf __pycache__

fclean: clean
	rm -f $(NAME)

re: fclean all

IMAGE	= epitechcontent/epitest-docker

docker:
	sudo docker run -it -v $(shell pwd):/app --workdir /app $(IMAGE)