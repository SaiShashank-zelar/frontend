FROM        node:alpine
RUN         npm install -g @vue/cli
RUN         mkdir -p /var/frontend
WORKDIR     /var/frontend
COPY        / . /var/frontend
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass

FROM        nginx
COPY        default /etc/nginx/sites-available/default


