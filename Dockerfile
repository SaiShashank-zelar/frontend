FROM        node:alpine
RUN         npm install -g @vue/cli
RUN         mkdir -p /var/www/html
WORKDIR     /var/www/html/frontend
COPY        / .
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass --sass-binary-name = linux-x64-83
FROM        nginx
COPY        default /etc/nginx/sites-available


