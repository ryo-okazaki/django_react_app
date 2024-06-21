#!/bin/sh

if [ "$DJANGO_DEBUG" = "1" ]; then
    python manage.py runserver 0.0.0.0:8000
else
    gunicorn project.wsgi:application --bind 0.0.0.0:8000
fi
