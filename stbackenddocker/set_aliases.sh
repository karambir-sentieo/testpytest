echo "alias runmongo='mongos --logpath /var/log/mongodb/mongodb_v3.2.log --configdb rs_config/11.0.9.225:27019,11.0.9.226:27019,11.0.9.227:27019 --fork'" >> /etc/bash.bashrc
echo "alias runlocal='cd /home/ubuntu/Documents/projects/sentieowebapi; python manage.py runserver'" >> /etc/bash.bashrc

