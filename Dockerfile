FROM        node:lts-alpine
RUN         mkdir -p /var/www/html
COPY        frontend /var/www/html
WORKDIR     /frontend
COPY        / .
RUN         npm install
RUN         npm run build

FROM        nginx
COPY        default /etc/nginx/sites-available


