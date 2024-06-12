create view vue_produits_categories as select
categorie.id_cat, categorie.nom_categorie,
produit.id_produit, produit.nom_produit,produit.prix_produit, produit.description
from categorie, produit
where categorie.id_cat = produit.id_cat;
