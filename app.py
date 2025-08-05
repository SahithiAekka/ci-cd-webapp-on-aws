from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from your Flask app deployed on AWS EC2!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

# http://3.143.242.208:5000/ -- 3.143.242.208 is the public IP of the EC2 instance 