build:
	sudo docker build -t user1 .
swarm-init:
	sudo docker swarm init
stack-create:
	sudo docker stack deploy --compose-file=docker-compose.yml user
services:
	sudo docker service ls
build-2:
	sudo docker build -t awesome:v2 .
update-build-2:
	sudo docker service update --image awesome:v2 prod_awesome
scale-service:
	sudo docker service scale prod_awesome=50
remove-im:
	sudo docker stop $(sudo docker ps -aq) && sudo docker rmi --force $(sudo docker images -q) && sudo docker rm -f $(sudo docker ps -aq)
test-user1:
	curl http://localhost:8080/user1/index.html
test-user2:
	curl http://localhost:1936/user2/index.html
dc-ps:
	sudo docker ps
dc-im:
	sudo docker images
