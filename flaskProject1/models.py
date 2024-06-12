from . import app, db

from flask_sqlalchemy import SQLAlchemy


class Jeux(db.Model):
    id_jeux = db.Column(db.Integer, primary_key=True)
    nom = db.Column(db.String(100), nullable=True)
    prix = db.Column(db.Float(10), nullable=False)
    description = db.Column(db.String(100), nullable=False)
    id_class = db.Column(db.Integer, db.ForeignKey('classification.id_classification'), nullable=False)
    id_config = db.Column(db.Integer, db.ForeignKey('config.id_config'), nullable=False)
    id_config_1 = db.Column(db.Integer, db.ForeignKey('config.id_config'), nullable=False)
    image = db.Column(db.String(100), nullable=False, default='default.jpg')
    video = db.Column(db.String(100), nullable=False, default='default.jpg')

    def __repr__(self):
        return f"Jeux('{self.id_jeux}', '{self.nom}', '{self.prix}', '{self.description}', '{self.id_classification}', '{self.id_config}', '{self.id_config1}', '{self.image}', '{self.video}')"

class vue_jeux_config(db.Model):
    id_jeux = db.Column(db.Integer, primary_key=True)
    nom_jeu = db.Column(db.String(100), nullable=True)
    prix = db.Column(db.Float(10), nullable=False)
    description = db.Column(db.String(100), nullable=False)
    image = db.Column(db.String(100), nullable=False, default='default.jpg')
    video = db.Column(db.String(100), nullable=False, default='default.jpg')
    ram_config1 = db.Column(db.String(100), nullable=False)
    stockage_config1 = db.Column(db.String(100), nullable=False)
    ram_config2 = db.Column(db.String(100), nullable=False)
    stockage_config2 = db.Column(db.String(100), nullable=False)
    nom_processeur_config1 = db.Column(db.String(100), nullable=False)
    nom_processeur_config2 = db.Column(db.String(100), nullable=False)
    nom_carte_graphique_config1 = db.Column(db.String(100), nullable=False)
    nom_carte_graphique_config2 = db.Column(db.String(100), nullable=False)
    nom_os_config1 = db.Column(db.String(100), nullable=False)
    nom_os_config2 = db.Column(db.String(100), nullable=False)
    pegi = db.Column(db.Integer, nullable=False)
    icon = db.Column(db.String(100), nullable=False, default='default.jpg')
    def __repr__(self):
        return f"Jeux_con('{self.id_jeux}', '{self.nom_jeux}', '{self.prix}', '{self.description}', '{self.image}', '{self.video}', '{self.ram_config1}', '{self.stockage_config1}', '{self.ram_config2}', '{self.stockage_config2}', '{self.nom_procsseur_config1}', '{self.nom_procsseur_config2}', '{self.nom_carte_graphique_config1}', '{self.nom_carte_graphique_config2}', '{self.nom_os_config1}', '{self.nom_os_config2}', '{self.pegi}', '{self.icon}')"