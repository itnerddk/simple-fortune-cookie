#!/bin/bash
set -e
echo "$docker_password" | docker login ghcr.io --username "$docker_username" --password-stdin
docker push "ghcr.io/$docker_username/simple-fortune-cookie-backend:1.0-${GIT_COMMIT::8}" 
docker push "ghcr.io/$docker_username/simple-fortune-cookie-backend:latest" &
wait
