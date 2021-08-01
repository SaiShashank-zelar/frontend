FROM        node
RUN         mkdir -p /var/www/html
WORKDIR     /var/www/html/frontend
COPY        / .
RUN         npm install
RUN         npm rebuild node-sass --sass-binary-name = linux-x64-83

FROM        nginx
COPY        default /etc/nginx/sites-available


