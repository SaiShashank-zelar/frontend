FROM        smebberson/alpine-nginx-nodejs
RUN         npm install -g @vue/cli
RUN         mkdir -p /var/www/html
WORKDIR     /var/www/html
COPY        / . /var/www/html/
RUN         ls
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass
COPY        default /etc/nginx/sites-available/default


