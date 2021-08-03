FROM        node:alpine
RUN         npm install -g @vue/cli
RUN         rm -rf /usr/share/nginx/html
WORKDIR     /usr/share/nginx/html
COPY        / . /usr/share/nginx/html
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass

FROM        nginx
COPY        default /etc/nginx/sites-available/default


