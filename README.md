# FrontEnd:
### Install Nginx:-
   * #apt update
   * #apt install nginx
### Install NodeJs:-
   * #apt install nodejs
   * #apt install npm 
### Install vue:-
   * #npm install -g @vue/cli
### Deploy in default nginx folder:-
   * #cd /var/www/html/
   * #git clone https://github.com/SaiShashank-zelar/frontend.git
   * #cd frontend
   * #npm install
   * #npm run build
   * #npm start
   * #vi /etc/nginx/sites-available/default
   * #nginx –t
   * #systemctl restart nginx
  ![Screenshot (553)](https://user-images.githubusercontent.com/82635540/115687525-e4344a80-a377-11eb-91cf-a54f35eade2b.png)
