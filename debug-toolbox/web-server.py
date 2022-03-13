import socket
from flask import Flask
from flask import jsonify

app = Flask(__name__)


@app.route("/")
def index():
    hostname = socket.gethostname()
    return jsonify({"hostname": hostname, "ip": socket.gethostbyname(hostname)})


@app.route("/ping")
def ping():
    return jsonify({"result": "pong"})


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=False)
