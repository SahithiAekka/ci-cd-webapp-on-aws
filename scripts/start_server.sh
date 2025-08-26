#!/bin/bash

# Navigate to app directory
cd /home/ec2-user/flask-app  # adjust if your path is different

# Activate virtual environment (if used)
source venv/bin/activate

# Start Flask app using Gunicorn (adjust app.py if needed)
# Assumes your Flask app is named `app` inside `app.py`
gunicorn --bind 0.0.0.0:5000 app:app --daemon
