from flask import Flask

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def index():

    body = "It works"

    return body



if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
