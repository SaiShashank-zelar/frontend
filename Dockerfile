FROM        ubuntu
RUN         apt update
RUN         apt install nginx -y
RUN         apt install nodejs -y
RUN         apt install npm -y
RUN         npm install -g @vue/cli
RUN         mkdir -p /var/frontend
WORKDIR     /var
COPY        frontend .
RUN         npm install --unsafe-perm -g node-sass
RUN         npm rebuild node-sass
COPY        default /etc/nginx/sites-available/default


