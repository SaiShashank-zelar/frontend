FROM        node:alpine
RUN         npm install -g @vue/cli
RUN         mkdir /var/www/html
COPY        / . /var/www/html/
RUN         ls
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass
FROM        nginx
COPY        default /etc/nginx/sites-available/default


