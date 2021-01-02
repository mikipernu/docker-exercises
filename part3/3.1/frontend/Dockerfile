FROM ubuntu:16.04

ENV API_URL http://localhost:8000

COPY . .

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt install -y nodejs && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* \
    npm install

WORKDIR /app
EXPOSE 5000

CMD ["npm", "start"]

# size: 282 MB <---------------------------


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

# old size: 526 MB <---------------------------