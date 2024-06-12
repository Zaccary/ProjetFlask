
--

INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (10, 'Croissants nature', 'viennoiseries2.jpg', 0.50, 'Croissant', 1);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (7, 'Gâteaux aux fraises', 'cake3.jpg', 12.99, 'Pour 8 personnes', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (11, 'Pains au chocolat', 'viennoiseries1.jpg', 0.50, 'Pain au chocolat traditionnels', 1);
INSERT INTO public.pproduit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (9, 'Eclairs au chocolat', 'patisserie2.jpg', 10.99, 'Pâtisseries pour tous les jours', 2);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (8, 'Tartelette aux fraises', 'patisserie3.jpg', 12.99, 'Pâtisserie de saison', 2);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (2, 'Gâteau festif', 'cake2.jpg', 34.59, 'Gâteau type Forêt Noire', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (5, 'Gâteau traditionnel de Noël', 'cakeFruitsConfits.jpg', 15.09, 'Gâteau aux fruits confits', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (4, 'Bûche de Noël vanillée', 'christmas2.jpg', 21.49, 'Bûche vanille - chocolat fondant', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (3, 'Bûche de Noël moka', 'christmas1.jpg', 18.49, 'Bûche roulée au moka et noix de pécan', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (6, 'Gâteau de mariage', 'wedding2.jpg', 75.99, 'Pièce montée crème', 3);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (12, 'Petits choux garnis', 'patisserie1.jpg', 3.50, 'Petits choux garnis, ganache vanille', 2);
INSERT INTO public.produit (id_produit, nom_produit, image, prix_produit, description, id_cat) VALUES (1, 'Pains de froment', 'pain_blanc.jpg', 1.00, 'Pain blanc', 1);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 206
-- Name: p_produit_id_produit_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.p_produit_id_produit_seq', 1, false);


-- Completed on 2023-01-20 17:58:12

--
-- PostgreSQL database dump complete
--

