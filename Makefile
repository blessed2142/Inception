up:
		docker-compose -f srcs/docker-compose.yml up
upd:
		docker-compose -f srcs/docker-compose.yml up -d 
down:
		docker-compose -f srcs/docker-compose.yml down
downv:
		docker-compose -f srcs/docker-compose.yml down -v
re:
		docker-compose -f srcs/docker-compose.yml up --build
red:
		docker-compose -f srcs/docker-compose.yml up --build -d