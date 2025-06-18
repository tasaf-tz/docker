# Docker cheetshet

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

## Images Management Commands

## Volumes Management Commands

## Networks Management Commands
