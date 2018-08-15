build:
	sudo docker build -t user1 .
swarm-init:
	sudo docker swarm init
stack-create:
	sudo docker stack deploy --compose-file=docker-compose.yml user1
services:
	sudo docker service ls
build-2:
	sudo docker build -t awesome:v2 .
update-build-2:
	sudo docker service update --image awesome:v2 prod_awesome
scale-service:
	sudo docker service scale prod_awesome=50
remove:
	sudo docker rm -f $(sudo docker ps -aq)
remove-all-images:
	sudo docker rmi --force $(sudo docker images -q)
