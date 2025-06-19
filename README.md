# Docker cheetshet

## Images Management Commands

### List and Search

List all local images  
```shell
docker images
```

List running containers
```shell
docker search <image_name>
```
### Pull and Build

Pull an image from a registry
```shell
docker pull <image_name>
```

Build an image from a Dockerfile
```shell
docker build -t <image_name>:<tag> <path_to_dockerfile_directory>
```

### Tag and Push

Tag an image for a remote repository
```shell
docker tag <image_name>:<tag> <repository>/<image_name>:<tag>
```

Push an image to Docker Hub or registry
```shell
docker push <repository>/<image_name>:<tag>
```

### Remove and Prune

Remove a local image
```shell
docker rmi <image_name>:<tag>
```
Remove all unused images
```shell
docker image prune
```

## Containers Management Commands

### Basic Container Commands

List running containers
```shell
docker ps
```

List all containers (include stopped)	
```shell
docker ps -a
```

Start a container
```shell
docker start <container_name|container_id>
```

Stop a container
```shell
docker stop <container_name|container_id>
```

Restart a container
```shell
docker restart <container_name|container_id>
```

Remove a stopped container
```shell
docker rm <container_name|container_id>
```

Remove all containers
```shell
docker rm $(docker ps -aq)
```

Run a new container (detached)
```shell
docker run -d <image_name>
```

Run a container with shell access
```shell
docker run -it <image_name> /bin/bash
```

### Container Lifecycle Shortcuts

Remove all stopped containers
```shell
docker container prune
```

Stop all running containers
```shell
docker stop $(docker ps -q)
```

Force remove all containers
```shell
docker rm -f $(docker ps -aq)
```

Auto-restart container on system boot
```shell
docker update --restart=always <container>
```

### Inspect and Logs

Show container logs
```shell
docker logs <container>
```

Check the IP address of a Docker container
```shell
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container_name|container_id>
``

Follow container logs (live stream)
```shell
docker logs -f <container>
```

Show detailed container config/info
```shell
docker inspect <container>
```

Live CPU, memory, network usage
```shell
docker stats
```

Show running processes in container
```shell
docker top <container>
```

### Executing Commands Inside Container

Run a command in a running container
```shell
docker exec -it <container> <command>
```

Open a bash shell in container
```shell
docker exec -it <container> <bash|sh>
```

Copy file/folder from container to host
```shell
docker cp <container>:<path> <host_path>
```

Copy file/folder from host to container
```shell
docker cp <host_path> <container>:<path>
```

## Volumes Management Commands

### Create and List

List all Volume
```shell
docker volume ls
```

Create a new named volume	
```shell
docker volume create <volume_name>
```

### Inspect and Remove

Inspect a specific Volume
```shell
docker volume inspect <volume_name>
```

Remove a Volume
```shell
docker volume rm <volume_name>
```

Prune all unused volume
```shell
docker volume prune
```

### Use Volumes with Containers

Mount a volume inside a container
```shell
docker run -d -v <volume_name>:<container_path> <image_name>
```

Mount a host directory as a volume
```shell
docker run -d -v $(pwd)/data:/app/data <image_name>
```

## Networks Management Commands
