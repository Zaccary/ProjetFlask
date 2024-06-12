from . import app, models
from flask import render_template, url_for,request  #on importe ce module appartenant au package flask
'''
@app.route('/')
@app.route("/accueil")
def accueil():
    return render_template('accueil.html',title='Bienvenue dans notre boutique', appl = app)
'''
@app.route('/')
@app.route("/accueil")
def accueil():
    liste_categories = models.Vue_produits_categories.query.distinct('nom_categorie')
    #session.query(Tag).distinct(Tag.name).group_by(Tag.name).count()
    return render_template('accueil.html',
                           title='Bienvenue dans notre boutique',
                           liste = type(liste_categories),
                           liste_cat = liste_categories)

@app.route('/tous_produits')
def montrer_produits():
    liste_produits = models.Vue_produits_categories.query.all()
    return render_template('tous_produits.html', title='Nos produits',liste_prod = liste_produits)

@app.route('/produits_categorie')
def produits_categorie():
    id_categ = request.args.get('id_cat') #récupérer paramètre dans l'URL
    liste_produits = models.Vue_produits_categories.query.filter_by(id_cat=id_categ)
    return render_template('produits_categorie.html', title='Nos produits',produits = liste_produits)

