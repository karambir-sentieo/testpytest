which python
mongos --logpath /var/log/mongodb/mongodb_v3.2.log --configdb rs_config/11.0.9.225:27019,11.0.9.226:27019,11.0.9.227:27019 --fork
cd /home/ubuntu/Documents/projects/sentieowebapi

# This old method is deprecated now
# gunicorn_django -c gunicorn_settings.py -b 0.0.0.0:8000

# BUG: remove daemon in gunicorn_settings.py - It is forcing the process in background
# gunicorn -c gunicorn_settings.py docs.wsgi:application -b 0.0.0.0:8000
gunicorn docs.wsgi:application -b 0.0.0.0:8000