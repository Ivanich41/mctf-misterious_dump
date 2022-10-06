import os
from flask import Flask, Response
from flask import send_from_directory

app = Flask(__name__)

@app.route('/')
def send_binary():
    app.logger.info('downloaded file')
    return send_from_directory("./", 'mysterious_dump.pcap')
if __name__ == '__main__':
    app.run(host="localhost", port=8080)

