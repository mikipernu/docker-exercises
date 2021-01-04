FROM node:alpine as builder

WORKDIR /app

COPY . .

RUN npm install && \
    npm install -g serve && \
    npm run build && \
    npm cache clean --force && \
    npm prune --production

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "dist"]


FROM nginx

COPY --from=builder ./app/dist/ /usr/share/nginx/html