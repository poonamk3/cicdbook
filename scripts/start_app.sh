#!/usr/bin/bash 
cd /home/ubuntu
# ./data.sh
source /home/ubuntu/env/bin/activate
cd /home/ubuntu/blogprojectdrf
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
sudo systemctl daemon-reload
sudo service gunicorn restart
sudo service nginx restart
# python manage.py runserver 0.0.0.0:8000
#sudo systemctl status nginx
