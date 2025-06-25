from flask import Flask
from prometheus_flask_exporter import PrometheusMetrics

import logging

app = Flask(__name__)
metrics = PrometheusMetrics(app)


# Logging to a file
logging.basicConfig(filename='/var/log/flaskapp/app.log', level=logging.INFO)

@app.route('/')
def home():
    app.logger.info("Home endpoint was hit.")
    return "Hello from Dockerized Flask App with Persistent Logs!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
