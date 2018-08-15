build:
	docker build -t user1 .
swarm-init:
	docker swarm init
stack-create:
	docker stack deploy --compose-file=docker-compose.yml prod
services:
	docker service ls
build-2:
	docker build -t awesome:v2 .
update-build-2:
	docker service update --image awesome:v2 prod_awesome
scale-service:
	docker service scale prod_awesome=50
remove:
	sudo docker rm -f $(sudo docker ps -aq)
