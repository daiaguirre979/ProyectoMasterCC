import time
from flask import Flask, jsonify, render_template, flash, redirect, request, url_for
from flask_sqlalchemy import SQLAlchemy

DBUSER = 'dayanna'
DBPASS = 'sistemas'
DBHOST = 'database'
DBPORT = '5432'
DBNAME = 'productosdb'


app = Flask(__name__)
# app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///productos.sqlite3'
app.config['SQLALCHEMY_DATABASE_URI'] = \
    'postgresql+psycopg2://{user}:{passwd}@{host}:{port}/{db}'.format(
        user=DBUSER,
        passwd=DBPASS,
        host=DBHOST,
        port=DBPORT,
        db=DBNAME)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.secret_key = 'sistemas'


db = SQLAlchemy(app)

class productos(db.Model):
    id = db.Column('producto_id', db.Integer, primary_key=True)
    name = db.Column(db.String(100))
    descripcion = db.Column(db.String(50))
    valor = db.Column(db.String(200))

    def __init__(self, name, descripcion, valor):
        self.name = name
        self.descripcion = descripcion
        self.valor = valor


def database_initialization_sequence():
    db.create_all()
    test_rec = productos(
            'IBUPROFENO',
            'CAPSULAS 600mg',
            '5 EUROS')

    db.session.add(test_rec)
    db.session.rollback()
    db.session.commit()


@app.route("/inicio")
def server_info():
    return jsonify({"status":"OK"})


@app.route("/status/")
def server():
    return jsonify({"status":"OK"})


@app.route('/', methods=['GET', 'POST'])
def home():
    if request.method == 'POST':
        if not request.form['name'] or not request.form['descripcion'] or not request.form['valor']:
            flash('Completa los campos', 'error')
        else:
            producto = productos(
                    request.form['name'],
                    request.form['descripcion'],
                    request.form['valor'])

            db.session.add(producto)
            db.session.commit()
            flash('Grabado correctamente')
            return redirect(url_for('home'))
    return render_template('show_all.html', producto=productos.query.all())


if __name__ == '__main__':
    dbstatus = False
    while dbstatus == False:
        try:
            db.create_all()
        except:
            time.sleep(2)
        else:
            dbstatus = True
    database_initialization_sequence()
	app.run(port=5000, host='0.0.0.0')
