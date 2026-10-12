from flask import Flask
import redis
import os

app = Flask(__name__)
r = redis.Redis(host='redis', port=6379, decode_responses=True)

@app.route('/')
def hello_world():
    count = r.incr('hits')
    return f'Hello, Docker! This page has been viewed {count} times.'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
