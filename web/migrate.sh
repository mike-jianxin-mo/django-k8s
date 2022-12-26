#!/bin/bash

SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"hello@qq.com"}

cd /app

/opt/venv/bin/python manage.py makemigrations --noinput
/opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true
