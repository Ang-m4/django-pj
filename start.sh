#!/bin/bash

python manage.py makemigrations blog
python manage.py makemigrations projects
python manage.py migrate blog
python manage.py migrate projects

gunicorn personal_portfolio.wsgi:application --bind 0.0.0.0:8000
