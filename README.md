FrontEnd:
Install Nginx:-
     #apt update
    # apt install nginx
Install NodeJs:-
     # apt install nodejs
     # apt install npm 
Install vue:-
     #npm install -g @vue/cli
 Deploy in default nginx folder:-
     #cd /var/www/html/
    #git clone https://github.com/SaiShashank-zelar/frontend.git
    #cd frontend
    #npm install
    #npm run build
   # vi /etc/nginx/sites-available/default
   # nginx –t
   # systemctl restart nginx
