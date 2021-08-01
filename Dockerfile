FROM        node:lts-alpine
RUN         mkdir -p /var/www/html
WORKDIR     /var/www/html/frontend
COPY        / .
RUN         apt install node-node-sass -y
RUN         npm install
RUN         npm run build
FROM        nginx
COPY        default /etc/nginx/sites-available


