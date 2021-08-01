FROM        node:alpine
RUN         mkdir -p /var/www/html
WORKDIR     /var/www/html/frontend
COPY        / .
RUN         npm install --unsafe-perm -g node-sass
RUN         npm i
RUN         npm run build
FROM        nginx
COPY        default /etc/nginx/sites-available


