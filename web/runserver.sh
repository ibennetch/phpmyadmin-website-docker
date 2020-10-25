#!/bin/sh

cd /var/www/

./manage.py migrate
./manage.py loaddata pmaweb/fixtures/test_data.json

./manage.py runserver [::]:8080 --insecure
