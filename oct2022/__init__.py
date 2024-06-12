from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
#clé secrète générée dans la console Python de Pycharm
app.config['SECRET_KEY'] = '8928f78cfd1cc50e626705e0ceca28ce'
#supprime les notifications inutiles
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

#emplacement de la base de données:
#app.config["SQLALCHEMY_DATABASE_URI"] = 'jdbc:postgresql://localhost:5432/flask_exemple'
app.config["SQLALCHEMY_DATABASE_URI"] ='postgresql://anonyme:anonyme@localhost/flask_exemple'
db = SQLAlchemy(app)

from . import routes
