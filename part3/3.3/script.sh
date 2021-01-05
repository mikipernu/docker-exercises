#!/bin/bash

echo "What is the GitHub repo you want to publish in Docker Hub?"
echo "Repos are in format: <user>/<repo>"
echo "user:"
read gh_user

echo "repo:"
read gh_repo

echo "What is your Docker Hub username?"
read docker_user


git clone https://github.com/$gh_user/$gh_repo.git
cd $gh_repo

docker login

docker build . -t $docker_user/$gh_repo
docker image push $docker_user/$gh_repo
