FROM        ubuntu
RUN         apt update -y  && apt install nginx -y
RUN         apt install nodejs -y
RUN         apt install npm -y
RUN         npm install -g @vue/cli
RUN         mkdir -p /var/frontend
WORKDIR     /var/frontend
COPY        . /var/frontend
WORKDIR     /var/frontend
RUN         cd /var/frontend && npm install node-sass
RUN         cd /var/frontend && npm rebuild node-sass
RUN         ls
COPY        todo.conf /etc/nginx/sites-available/default
CMD         ["nginx","-g","daemon off;"]


