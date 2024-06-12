CREATE TABLE Categorie(
   id_categorie SERIAL,
   nom_categorie TEXT NOT NULL,
   PRIMARY KEY(id_categorie)
);

CREATE TABLE Sous_categorie(
   id_sous_categorie SERIAL,
   nom_sous_categorie TEXT NOT NULL,
   id_categorie INTEGER NOT NULL,
   PRIMARY KEY(id_sous_categorie),
   FOREIGN KEY(id_categorie) REFERENCES Categorie(id_categorie)
);

CREATE TABLE Pays(
   id_pays SERIAL,
   nom_pays TEXT NOT NULL,
   PRIMARY KEY(id_pays)
);

CREATE TABLE Ville(
   id_ville SERIAL,
   nom_ville TEXT NOT NULL,
   code_postal TEXT NOT NULL,
   id_pays INTEGER NOT NULL,
   PRIMARY KEY(id_ville),
   FOREIGN KEY(id_pays) REFERENCES Pays(id_pays)
);

CREATE TABLE Boite(
   id_boite SERIAL,
   adresse TEXT NOT NULL,
   numero INTEGER,
   PRIMARY KEY(id_boite)
);

CREATE TABLE Magasin(
   id_magasin SERIAL,
   nom_magasin TEXT NOT NULL,
   adresse TEXT NOT NULL,
   numero TEXT NOT NULL,
   localite TEXT NOT NULL,
   code_postal TEXT NOT NULL,
   id_ville INTEGER NOT NULL,
   PRIMARY KEY(id_magasin),
   FOREIGN KEY(id_ville) REFERENCES Ville(id_ville)
);

CREATE TABLE Client(
   id_client SERIAL,
   nom_client TEXT NOT NULL,
   email TEXT NOT NULL,
   adresse TEXT NOT NULL,
   numero TEXT NOT NULL,
   id_ville INTEGER NOT NULL,
   PRIMARY KEY(id_client),
   FOREIGN KEY(id_ville) REFERENCES Ville(id_ville)
);

CREATE TABLE Produit(
   id_produit SERIAL,
   nom_produit TEXT NOT NULL,
   prix DOUBLE PRECISION,
   stock INTEGER,
   relais BOOLEAN,
   id_magasin INTEGER NOT NULL,
   id_sous_categorie INTEGER NOT NULL,
   PRIMARY KEY(id_produit),
   FOREIGN KEY(id_magasin) REFERENCES Magasin(id_magasin),
   FOREIGN KEY(id_sous_categorie) REFERENCES Sous_categorie(id_sous_categorie)
);

CREATE TABLE Panier(
   id_panier SERIAL,
   quantite INTEGER NOT NULL,
   id_client INTEGER NOT NULL,
   id_produit INTEGER NOT NULL,
   PRIMARY KEY(id_panier),
   FOREIGN KEY(id_client) REFERENCES Client(id_client),
   FOREIGN KEY(id_produit) REFERENCES Produit(id_produit)
);

CREATE TABLE Facture(
   id_facture SERIAL,
   date_facture DATE NOT NULL,
   paye BOOLEAN NOT NULL,
   id_produit INTEGER NOT NULL,
   id_client INTEGER NOT NULL,
   PRIMARY KEY(id_facture),
   FOREIGN KEY(id_produit) REFERENCES Produit(id_produit),
   FOREIGN KEY(id_client) REFERENCES Client(id_client)
);

CREATE TABLE Livraison(
   id_livraison SERIAL,
   id_magasin INTEGER,
   id_facture INTEGER,
   PRIMARY KEY(id_livraison),
   FOREIGN KEY(id_magasin) REFERENCES Magasin(id_magasin),
   FOREIGN KEY(id_facture) REFERENCES Facture(id_facture)
);
