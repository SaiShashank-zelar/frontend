FROM        ubuntu
RUN         apt install nginx -y && apt install nodejs -y && apt install npm -y && npm install -g @vue/cli
WORKDIR     /var/www/html
COPY        / . /var/www/html/
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass
COPY        default /etc/nginx/sites-available/default


