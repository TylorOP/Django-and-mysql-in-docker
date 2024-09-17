#!/bin/bash

# Wait for the MySQL database to be ready
until mysql -h "$DB_HOST" -u"$DB_USER" -p"$DB_PASSWORD" -e "SELECT 1"; do
    echo "Waiting for MySQL database to be ready..."
    sleep 1
done

# Create the superuser
python manage.py migrate

echo "from django.contrib.auth import get_user_model; \
User = get_user_model(); \
User.objects.filter(username='$DJANGO_SUPERUSER_USERNAME').exists() or \
User.objects.create_superuser('$DJANGO_SUPERUSER_USERNAME', '$DJANGO_SUPERUSER_EMAIL', '$DJANGO_SUPERUSER_PASSWORD')" \
| python manage.py shell
