FROM        node
RUN         npm install -g @vue/cli
RUN         mkdir -p /var/www/html/frontend
RUN         cp 775 -rf roundcubemail-1.2.3/. /var/www/html/frontend
WORKDIR     /var/www/html/frontend
COPY        / . /var/www/html/frontend/
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass

FROM        nginx
COPY        default /etc/nginx/sites-available/default


