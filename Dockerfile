FROM nginx:latest
COPY chocolux-html /usr/share/nginx/html
EXPOSE 80