#!/bin/bash
set -e
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}" 
REPO="ghcr.io/$docker_username/"
echo "${REPO}"
cd frontend
docker build -t "${REPO}simple-fortune-cookie-frontend:latest" -t "${REPO}simple-fortune-cookie-frontend:1.0-$Tag" .
