# windows_docker_reset.ps1
Write-Host "Stopping all running Docker containers..."
docker ps -q | ForEach-Object { docker stop $_ }

Write-Host "Removing all Docker containers..."
docker ps -aq | ForEach-Object { docker rm -f $_ }

Write-Host "Removing all Docker images..."
docker images -q | ForEach-Object { docker rmi -f $_ }

Write-Host "Removing all Docker volumes..."
docker volume ls -q | ForEach-Object { docker volume rm $_ }

Write-Host "Performing system prune..."
docker system prune -a --volumes -f

Write-Host "`nDocker environment has been fully reset." -ForegroundColor Green

