FROM        ubuntu
RUN         mkdir -p /var/www/html/frontend
WORKDIR     /var/www/html/frontend
COPY        . /var/www/html/frontend/
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass
COPY        default /etc/nginx/sites-available/default


