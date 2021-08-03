FROM        smebberson/alpine-nginx-nodejs
RUN         mkdir -p /var/www/html
WORKDIR     /var/www/html
COPY        / . /var/www/html/
RUN         ls
RUN         npm install
RUN         npm rebuild
COPY        default /etc/nginx/sites-available/default


