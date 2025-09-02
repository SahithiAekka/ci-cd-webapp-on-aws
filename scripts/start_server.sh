#!/bin/bash

# Navigate to app directory
cd /home/ec2-user/flask-app

# Stop any existing processes
sudo pkill -f "python3.*app.py" || true

# Start Flask app directly
python3 app.py > /var/log/flask-app.log 2>&1 &

echo "Flask app started on port 5000"