FROM ubuntu:16.04

WORKDIR /app
ENV API_URL http://localhost:8000

COPY . .

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt install -y nodejs && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    npm install

EXPOSE 5000

CMD ["npm", "start"]

# layer size: 362 MB <---------------------------
# image size: 493 MB


##### ##### ##### ##### ##### ##### ##### 
#######        old version        #######
##### ##### ##### ##### ##### ##### ##### 

# FROM ubuntu:16.04

# WORKDIR /app

# RUN apt-get update && apt-get install -y curl
# RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
# RUN apt install -y nodejs

# COPY . .
# RUN npm install

# EXPOSE 5000

# ENV API_URL http://localhost:8000

# CMD ["npm", "start"]

# layer size: 396.2 MB <---------------------------
# image size: 526 MB