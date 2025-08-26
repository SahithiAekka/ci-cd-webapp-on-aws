#!/bin/bash

# Update system packages
sudo yum update -y

# Install Python 3 and pip (Amazon Linux 2/2023)
sudo yum install -y python3 python3-pip

# Navigate to your app directory
cd /home/ec2-user/flask-app

# Dependencies already installed by CodeBuild
echo "Dependencies already installed during build phase"

