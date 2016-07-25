FILENAME=/var/www/core/local_settings.py

echo -e "DEBUG=False" > $FILENAME
echo -e "DATABASES = {'default': {'ENGINE': 'django.db.backends.mysql','HOST': 'mysql.alpha','NAME': 'mainDB','USER': 'dbmaster','PASSWORD': '5T8390sdkd','PORT': '3306',}}" > $FILENAME

python /var/wwww/manage.py migrate --noinput

chown www-data:www-data -R /var/www