#!/bin/bash

# Update system packages
sudo yum update -y

# Install Python 3 and pip (Amazon Linux 2/2023)
sudo yum install -y python3 python3-pip

# Install virtualenv (optional but recommended)
pip3 install virtualenv

# Navigate to your app directory
cd /home/ec2-user/flask-app  # Adjust path if needed

# Create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install project dependencies from requirements.txt
pip install -r requirements.txt

# Optional: Run the Flask app (debug only)
# flask run --host=0.0.0.0 --port=5000

EOF
