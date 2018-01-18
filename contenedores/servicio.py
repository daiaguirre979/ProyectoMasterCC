from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:////tmp/productos.db'
db = SQLAlchemy(app)
class Productos(db.Model):
   id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(96), unique=True)
   descripcion = db.Column(db.String(200), unique=True)
   valor = db.Column(db.String(20),unique=True)
@app.route("/")
def server_info():
return jsonify({"server": "Api Rest - Productos"})
 @app.route("/status/")
def server_status():return jsonify({"status": "OK" })
@app.route("/productos/", endpoint="nueva_productos", methods=["POST"])
def new_producto():
   from flask import request
   json = request.get_json()   
   name = json.get("name")
    descripcion = json.get("descripcion")
    valor = json.get("valor")
    new_prod = Productos()
   new_prod.name = name
    new_prod.descripcion = descripcion
    new_prod.valor = valor
    db.session.add(new_prod)
   db.session.commit()
 return jsonify({"id": new_prod.id}), 201
@app.route("/lista/", endpoint="lista_productos", methods=["GET"])
def lista_productos():
pruebas = Productos.query.order_by(Productos.id).all()
return jsonify({"productos": [{"id": x.id, "name": x.name, "descripcion": x.descripcion, "valor": x.valor} for x in pruebas] })
 if __name__ == "__main__":
 db.create_all() app.run(port=5000, host="0.0.0.0")
