from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template("index.html")

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)


# http://127.0.0.1:5000 only works from inside the EC2 instance itself (not from your browser).
# http://18.219.18.219:5000 is the correct way to access it publicly (from your laptop, phone, etc.).

