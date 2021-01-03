FROM node:alpine

WORKDIR /app
ENV API_URL http://localhost:8000

COPY . .

RUN chown -R node:node /app && \
    npm install && \
    npm cache clean --force && \
    npm prune --production

USER node

EXPOSE 5000

CMD ["npm", "start"]

# RUN layer size: 192 MB <---------------------------
# frontend-optimized image size: 306 MB


##### ##### ##### ##### ##### ##### ##### 
#######        old version        #######
##### ##### ##### ##### ##### ##### ##### 

# FROM ubuntu:16.04

# WORKDIR /app
# ENV API_URL http://localhost:8000

# COPY . .

# RUN apt-get update && apt-get install -y curl && \
#     curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
#     apt install -y nodejs && \
#     apt-get purge -y --auto-remove curl && \
#     rm -rf /var/lib/apt/lists/* && \
#     groupadd -r app && \
#     useradd -m app -g app && \
#     chown -R app:app /app && \
#     npm install

# USER app 

# EXPOSE 5000

# CMD ["npm", "start"]

# RUN layer size: 363 MB <---------------------------
# frontend image size: 495 MB