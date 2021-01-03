FROM node:alpine

WORKDIR /app
ENV FRONT_URL http://localhost:5000

COPY . .

RUN npm install && \
    npm cache clean --force && \
    npm prune --production

USER node

EXPOSE 8000

CMD ["npm", "start"]

# RUN layer's size: 12.5 MB <---------------------------
# backend-optimized image size: 122 MB


##### ##### ##### ##### ##### ##### ##### 
#######        old version        #######
##### ##### ##### ##### ##### ##### ##### 

# FROM ubuntu:16.04

# WORKDIR /app
# ENV FRONT_URL http://localhost:5000

# RUN apt-get update && apt-get install -y curl && \
#     curl -sL https://deb.nodesource.com/setup_10.x | bash && \
#     apt install -y nodejs && \
#     apt-get purge -y --auto-remove curl && \
#     rm -rf /var/lib/apt/lists/* \
#     groupadd -r app && \
#     useradd -m app && \
#     chown -R app:app /app

# COPY . .

# RUN npm install

# USER app

# EXPOSE 8000

# CMD ["npm", "start"]

# RUN layers' size: 168.1 MB <---------------------------
# backend image size: 299 MB
