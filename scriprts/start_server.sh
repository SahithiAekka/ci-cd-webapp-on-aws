#!/bin/bash

# Navigate to app directory
cd /home/ec2-user/flask-app

# Start Flask app using Gunicorn
# Dependencies installed in current directory by CodeBuild
PYTHONPATH=/home/ec2-user/flask-app python3 -m gunicorn --bind 0.0.0.0:5000 app:app --daemon
