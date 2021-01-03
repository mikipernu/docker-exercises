FROM ubuntu:16.04

WORKDIR /app
ENV FRONT_URL http://localhost:5000
EXPOSE 8000
COPY . .

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    npm install

CMD ["npm", "start"]

# layer size: 168 MB <---------------------------
# image size: 299 MB

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

# EXPOSE 8000

# ENV FRONT_URL http://localhost:5000

# CMD ["npm", "start"]

# layer size: 202 MB <---------------------------
# image size: 332 MB