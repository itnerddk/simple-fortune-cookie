#!/bin/bash
set -e
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}" 
REPO="ghcr.io/$docker_username/"
echo "${REPO}"
cd backend
docker build -t "${REPO}simple-fortune-cookie-backend:latest" -t "${REPO}simple-fortune-cookie-backend:1.0-$Tag" .