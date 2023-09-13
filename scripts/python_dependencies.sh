#!/usr/bin/env bash

virtualenv /home/ubuntu/env
source /home/ubuntu/env/bin/activate
pip install -r /home/ubuntu/blogprojectdrf/requirements.txt
sudo chmod 777 /home/ubuntu/blogprojectdrf/scripts/start_app.sh 
sudo chown -R $USER /home/ubuntu/blogprojectdrf/