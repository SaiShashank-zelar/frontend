FROM        node
RUN         mkdir -p /var/www/html
WORKDIR     /var/www/html/frontend
COPY        / .
RUN         npm uninstall node-sass && npm install node-sass --sass-binary-name=linux-x64-57
RUN         npm install
RUN         npm run build
FROM        nginx
COPY        default /etc/nginx/sites-available


