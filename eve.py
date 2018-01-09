from eve import Eve

app = Eve()


@app.route('/status')
def hello_world():
    return 'OK'

if __name__ == '__main__':
    app.run()
