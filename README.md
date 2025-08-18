# 🚀 ProcureSenseAI – Workflow global & Architecture du projet

## Contexte

Dans le cadre de la transformation digitale des fonctions achats, l’analyse et la valorisation des données deviennent des leviers stratégiques pour la performance des grandes organisations.  
Ce projet simule la conception d’un outil de pilotage intelligent, combinant Power BI, Python et Snowflake pour offrir une vue d’ensemble claire et interactive des achats et fournisseurs.

---

## 🛤️ Workflow global du projet

### 1️⃣ Power BI – Exploration initiale & Reporting
- Lecture et visualisation du fichier CSV (`procuresenseai_data.csv`)
- Construction de 4 pages de dashboard :
  - Vue d’ensemble : KPIs globaux du processus achat
  - Analyse par fournisseur : répartition des performances
  - Évolution dans le temps : tendances et anomalies
  - Analyse de retards : identification des causes fréquentes

### 2️⃣ Python – Intelligence Artificielle
- Nettoyage et enrichissement des données (`Analyse_Python.ipynb`)
- Feature engineering : création de variables explicatives, encodage des catégories
- Entraînement d’un modèle IA (Logistic Regression) pour prédire les retards de livraison
- Génération de la colonne `risque_retard` (probabilité de retard par commande)
- Export du fichier enrichi (`commandes_avec_risque.csv`)
- Sauvegarde du modèle IA (`modele_retard_fournisseur.pkl`)

### 3️⃣ Snowflake + SQL – Industrialisation & Gestion des données
- Chargement des données enrichies dans Snowflake
- Création de vues et de tables pour automatiser les calculs :
  - Retard moyen par fournisseur
  - Nombre de commandes, montant max, satisfaction
  - `vue_score_satisfaction`, `vue_retards_mensuels`, `vue_satisfaction_categorie`
- Requêtes SQL pour transformation et agrégation
- Table et vue principale : `VUE_RETARD_FOURNISSEUR`, `table_retard_fournisseur`

### 4️⃣ Power BI – Intégration & Visualisation intelligente
- Connexion directe à Snowflake pour exploiter les données à jour
- Intégration des résultats du modèle IA (risque de retard)
- Affichage de nouveaux KPIs : risque de retard, score fournisseur, satisfaction

---

## 📁 Structure des fichiers

- `procuresenseai_data.csv` : Données brutes des achats et fournisseurs
- `Analyse_Python.ipynb` : Notebook d’analyse, nettoyage, modélisation IA et export des résultats
- `commandes_avec_risque.csv` : Données enrichies avec la probabilité de retard
- `creation_table_commandes_snowflake.sql` : Script sql employé sur snowflake pour les requêtes
- `modele_retard_fournisseur.pkl` : Modèle IA sauvegardé pour réutilisation
- (Snowflake) : Tables et vues créées pour l’industrialisation des calculs
- (Power BI) : Fichier PBIX du dashboard interactif

---

## 💡 Plus-value du projet

- **Pilotage intelligent** : Anticipation des risques et optimisation des achats
- **Vision 360°** : Suivi global et détaillé des fournisseurs et commandes
- **Démarche réplicable** : Architecture modulaire, adaptable à toute entreprise
- **Synergie Data & IA** : Data visualisation, ingénierie des données et intelligence artificielle
- **Cloud & Scalabilité** : Snowflake assure la gestion et la sécurité des données à grande échelle

---

## Architecture : 

```
Power BI (Exploration) → Python (IA & Calculs) → Snowflake (Stockage & Vues) → Power BI (Visualisation avancée)
```

---

## ✨ Conclusion

Ce projet illustre comment la data et l’IA transforment le pilotage des achats, en passant d’une simple analyse descriptive à une démarche prédictive et proactive, au service de la performance des organisations.

---
=======
# procuresenseai-pilotage-achats
Outil de pilotage intelligent des achats et fournisseurs avec Power BI, Python et Snowflake
