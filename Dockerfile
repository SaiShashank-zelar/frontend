FROM        node
RUN         mkdir -p /var/www/html
WORKDIR     /var/www/html/frontend
COPY        / .
RUN         npm install node-sass@latest
RUN         npm install
RUN         npm run build
FROM        nginx
COPY        default /etc/nginx/sites-available


