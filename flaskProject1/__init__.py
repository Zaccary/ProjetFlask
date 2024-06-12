from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SECRET_KEY'] = 'd16d535f7302c86db1f08019431ef191'
# Supprime les notifications inutiles
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Emplacement de la base de données
app.config["SQLALCHEMY_DATABASE_URI"] = 'postgresql://LeZ:admin@localhost:5432/ProjetTi'

# Instanciation d'un objet SQLAlchemy
db = SQLAlchemy(app)
#Après avoir instancié db :
from . import routes