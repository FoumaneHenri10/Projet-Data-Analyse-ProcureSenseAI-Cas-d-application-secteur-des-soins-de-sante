-- Crée une base de donnée
CREATE DATABASE IF NOT EXISTS procuresenseai;

-- Crée un schéma 
USE DATABASE procuresenseai;
CREATE SCHEMA IF NOT EXISTS achats;

-- Activation de la  base + schéma :
USE SCHEMA public;

-- Créer la table "commandes" de la structure basée sur le fichier CSV :
CREATE OR REPLACE TABLE commandes (
    id_commande INTEGER,
    fournisseur STRING,
    categorie_achat STRING,
    date_commande DATE,
    date_livraison DATE,
    montant_euros FLOAT,
    retard_jours INTEGER,
    satisfaction_1_5 FLOAT,
    statut STRING
);

-- Vérifier les données importées
SELECT * FROM commandes LIMIT 10;

-- Score satisfaction
CREATE OR REPLACE VIEW vue_score_satisfaction AS
SELECT fournisseur, AVG(satisfaction_1_5) AS satisfaction_moyenne
FROM COMMANDES
GROUP BY fournisseur;

-- Vue Score de satisfaction par catégorie
CREATE OR REPLACE VIEW vue_satisfaction_categorie AS
SELECT categorie_achat,
       AVG(satisfaction_1_5) AS satisfaction_moyenne
FROM commandes
GROUP BY categorie_achat;

-- Vue Retards mensuels
CREATE OR REPLACE VIEW vue_retards_mensuels AS
SELECT TO_CHAR(date_commande, 'YYYY-MM') AS mois,
       SUM(retard_jours) AS total_retard
FROM commandes
GROUP BY mois
ORDER BY mois;
