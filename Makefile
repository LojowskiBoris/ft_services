include ./srcs/.env

SRCS=./srcs/docker-compose.yml

all:	up

redirect_localhost:
	./redirect_localhost.sh $(DOMAIN_NAME)

create_volumes:
	sudo mkdir -p $(WORDPRESS_VOLUME) $(MARIADB_VOLUME)

clean_volumes:
	sudo rm -rf $(WORDPRESS_VOLUME)/* $(MARIADB_VOLUME)/*

remove_volumes:
	sudo rm -rf $(WORDPRESS_VOLUME) $(MARIADB_VOLUME)

up:	redirect_localhost create_volumes
	sudo service nginx stop
	sudo service mysql stop
	docker-compose --env-file ./srcs/.env -f $(SRCS) up -d --build

down:
	docker-compose --env-file ./srcs/.env -f $(SRCS) down

clean: down clean_volumes

fclean: clean remove_volumes
	./clear_docker.sh

re:	clean up

.PHONY: all up down clean fclean re redirect_localhost clean_volumes remove_volumes 
