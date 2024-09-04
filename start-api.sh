#!/bin/bash

# Install requirments

(cd api && pip install -r requirments.txt)

# Apply migrations

(cd api && python manage.py migrate)

# Start the Django server located in the /api folder
(cd api && python manage.py runserver)