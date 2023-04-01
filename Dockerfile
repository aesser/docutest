# stage 1
FROM node:18-alpine AS builder
WORKDIR /app
COPY package.json .
#COPY package-lock.json .
RUN yarn install
COPY . .
RUN yarn build

# stage 2
FROM nginx:1.23.4-alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]
