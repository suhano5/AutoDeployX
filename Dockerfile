# Stage: NGINX static site
FROM nginx:stable-alpine
COPY app /usr/share/nginx/html
EXPOSE 80
