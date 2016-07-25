sudo FILENAME=/var/www/core/local_settings.py

sudo echo -e "DEBUG=False" > $FILENAME
sudo echo -e "DATABASES = {'default': {'ENGINE': 'django.db.backends.mysql','HOST': 'mysql.alpha','NAME': 'mainDB','USER': 'dbmaster','PASSWORD': '5T8390sdkd','PORT': '3306',}}" > $FILENAME

sudo python /var/www/manage.py migrate --noinput
sudo python /var/www/manage.py loaddata /var/www/core/web/fixtures/initial_data.json

sudo chown www-data:www-data -R /var/www