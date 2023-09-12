#!/usr/bin/bash 
source /home/ubuntu/env/bin/activate
cd /home/ubuntu/blogprojectdrf
python manage.py migrate
python manage.py collectstatic --noinput
sudo systemctl daemon-reload
sudo service gunicorn restart
sudo service nginx restart
#sudo systemctl status nginx
