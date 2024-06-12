from . import app, models
from flask import render_template, url_for

@app.route('/')
@app.route('/accueil')
def accueil():
    jeux = models.Jeux.query.all()
    return render_template('accueil.html', jeux=jeux)

@app.route('/jeux_page/<int:id_jeu>')
def jeux_page(id_jeu):
    jeuCon = models.vue_jeux_config.query.get_or_404(id_jeu)
    return render_template('jeux_page.html', jeuCon=jeuCon)