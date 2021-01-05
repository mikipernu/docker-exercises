# Using dind (Docker-in-Docker) image
FROM docker:dind

COPY ./script.sh script.sh

RUN apk add --no-cache bash git

ENTRYPOINT ["./script.sh"]
