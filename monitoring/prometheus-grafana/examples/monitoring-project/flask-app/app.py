from flask import Flask
from prometheus_client import Counter, generate_latest

app = Flask(__name__)
REQUEST_COUNT = Counter('flask_request_count', 'Total request count')

@app.route('/')
def hello():
    REQUEST_COUNT.inc()
    return "Hello from Flask!"

@app.route('/metrics')
def metrics():
    return generate_latest(), 200, {'Content-Type': 'text/plain'}