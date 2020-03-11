FROM node:alpine AS builder

WORKDIR /home/asadrajput/app

COPY . .

RUN npm install && \
    npm run build

FROM nginx:alpine

COPY --from=builder /home/asadrajput/app/dist/* /usr/share/nginx/html/
