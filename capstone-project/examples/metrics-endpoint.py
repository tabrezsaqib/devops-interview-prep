from prometheus_client import generate_latest, Counter
requests = Counter('hello_requests_total', 'Total hello requests')

@app.route('/')
def hello():
    requests.inc()
    return "Hello!"

@app.route('/metrics')
def metrics():
    return generate_latest()
