from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Welcome to my app'


@app.route('/status')
def status_page():
    return '', 204


if __name__ == '__main__':
    app.run()