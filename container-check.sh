#!/bin/bash
container_name="app-name"
docker_status=$(docker container inspect -f '{{.State.Status}}' $container_name)

if [[ $docker_status == "exited" ]]; then
	docker restart $container_name

else 
	echo "the container is running and no need to restart"

fi