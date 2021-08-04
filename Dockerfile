FROM        node
RUN         npm install -g @vue/cli
RUN         mkdir /var/www/html/frontend
WORKDIR     /var/www/html/frontend
COPY        / .
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass

FROM        nginx
COPY        default /etc/nginx/sites-available/default


