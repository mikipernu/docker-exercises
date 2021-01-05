
# Readme

First build image with `docker build . -t docker-in-docker-builder`.

Then run with `docker run -ti -v /var/run/docker.sock:/var/run/docker.sock docker-in-docker-builder`.

The application prompts the user for a GitHub repo (user/repository), for their Docker Hub username, and asks the user to login to Docker. Then it builds the repo into an image and publishes this image in Docker Hub.

## Published images

- https://hub.docker.com/r/mikipernu/docker-app
- https://hub.docker.com/r/mikipernu/docker-hy.github.io
