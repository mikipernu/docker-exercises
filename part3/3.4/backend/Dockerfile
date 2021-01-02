FROM ubuntu:16.04

WORKDIR /app
ENV FRONT_URL http://localhost:5000

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* \
    groupadd -r app && \
    useradd -m app && \
    chown -R app:app /app

COPY . .

RUN npm install

USER app

EXPOSE 8000

CMD ["npm", "start"]
